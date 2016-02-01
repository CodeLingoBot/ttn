// Copyright © 2015 The Things Network
// Use of this source code is governed by the MIT license that can be found in the LICENSE file.

package components

import (
	"github.com/boltdb/bolt"
	"github.com/brocaar/lorawan"
)

type brokerStorage interface {
	Lookup(devAddr lorawan.DevAddr) ([]brokerEntry, error)
	Store(devAddr lorawan.DevAddr, entry brokerEntry) error
}

type brokerBoltStorage struct {
	*bolt.DB
}

type brokerEntry struct {
	Id      string
	NwkSKey lorawan.AES128Key
	Url     string
}

func (s brokerBoltStorage) Lookup(devAddr lorawan.DevAddr) ([]brokerEntry, error) {
	entries, err := lookup(s.DB, []byte("devices"), devAddr, &brokerEntry{})
	if err != nil {
		return nil, err
	}
	return entries.([]brokerEntry), nil
}

func (s brokerBoltStorage) Store(devAddr lorawan.DevAddr, entry brokerEntry) error {
	return store(s.DB, []byte("devices"), devAddr, &entry)
}

func (entry brokerEntry) MarshalBinary() ([]byte, error) {
	w := NewEntryReadWriter(nil)
	w.Write(uint16(len(entry.Id)))
	w.Write(entry.Id)
	w.Write(uint16(len(entry.NwkSKey)))
	w.Write(entry.NwkSKey)
	w.Write(uint16(len(entry.Url)))
	w.Write(entry.Url)
	return w.Bytes()
}

func (entry *brokerEntry) UnmarshalBinary(data []byte) error {
	if entry == nil || len(data) < 3 {
		return ErrNotUnmarshable
	}
	r := NewEntryReadWriter(data)
	r.Read(func(data []byte) { entry.Id = string(data) })
	r.Read(func(data []byte) { copy(entry.NwkSKey[:], data) })
	r.Read(func(data []byte) { entry.Url = string(data) })
	return r.Err()
}
