package utils

import "iter"

type OrderedMap[K comparable, V any] struct {
	keys   []K
	values map[K]V
}

func NewOrderedMap[K comparable, V any]() *OrderedMap[K, V] {
	return &OrderedMap[K, V]{
		keys:   []K{},
		values: make(map[K]V),
	}
}

// All returns an iterator for use with 'range'
func (om *OrderedMap[K, V]) All() iter.Seq2[K, V] {
	return func(yield func(K, V) bool) {
		for _, k := range om.keys {
			if !yield(k, om.values[k]) {
				return
			}
		}
	}
}

func (om *OrderedMap[K, V]) Set(key K, value V) {
	if _, exists := om.values[key]; !exists {
		om.keys = append(om.keys, key)
	}
	om.values[key] = value
}

func (om *OrderedMap[K, V]) Get(key K) (V, bool) {
	val, exists := om.values[key]
	return val, exists
}
