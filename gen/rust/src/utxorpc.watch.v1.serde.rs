// @generated
impl serde::Serialize for FollowTxsRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.min_depth != 0 {
            len += 1;
        }
        if self.max_depth != 0 {
            len += 1;
        }
        if !self.pattern.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.FollowTxsRequest", len)?;
        if self.min_depth != 0 {
            struct_ser.serialize_field("minDepth", &self.min_depth)?;
        }
        if self.max_depth != 0 {
            struct_ser.serialize_field("maxDepth", &self.max_depth)?;
        }
        if !self.pattern.is_empty() {
            struct_ser.serialize_field("pattern", &self.pattern)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FollowTxsRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "min_depth",
            "minDepth",
            "max_depth",
            "maxDepth",
            "pattern",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MinDepth,
            MaxDepth,
            Pattern,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "minDepth" | "min_depth" => Ok(GeneratedField::MinDepth),
                            "maxDepth" | "max_depth" => Ok(GeneratedField::MaxDepth),
                            "pattern" => Ok(GeneratedField::Pattern),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FollowTxsRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.FollowTxsRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FollowTxsRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut min_depth__ = None;
                let mut max_depth__ = None;
                let mut pattern__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MinDepth => {
                            if min_depth__.is_some() {
                                return Err(serde::de::Error::duplicate_field("minDepth"));
                            }
                            min_depth__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MaxDepth => {
                            if max_depth__.is_some() {
                                return Err(serde::de::Error::duplicate_field("maxDepth"));
                            }
                            max_depth__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Pattern => {
                            if pattern__.is_some() {
                                return Err(serde::de::Error::duplicate_field("pattern"));
                            }
                            pattern__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(FollowTxsRequest {
                    min_depth: min_depth__.unwrap_or_default(),
                    max_depth: max_depth__.unwrap_or_default(),
                    pattern: pattern__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.FollowTxsRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FollowTxsResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.item.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.FollowTxsResponse", len)?;
        if let Some(v) = self.item.as_ref() {
            struct_ser.serialize_field("item", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FollowTxsResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "item",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Item,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "item" => Ok(GeneratedField::Item),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FollowTxsResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.FollowTxsResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FollowTxsResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut item__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Item => {
                            if item__.is_some() {
                                return Err(serde::de::Error::duplicate_field("item"));
                            }
                            item__ = map.next_value()?;
                        }
                    }
                }
                Ok(FollowTxsResponse {
                    item: item__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.FollowTxsResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxEvent {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.watch.v1.TxEvent", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxEvent {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxEvent;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.TxEvent")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxEvent, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(TxEvent {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.TxEvent", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WaitForTxRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.max_depth != 0 {
            len += 1;
        }
        if !self.pattern.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.WaitForTxRequest", len)?;
        if self.max_depth != 0 {
            struct_ser.serialize_field("maxDepth", &self.max_depth)?;
        }
        if !self.pattern.is_empty() {
            struct_ser.serialize_field("pattern", &self.pattern)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WaitForTxRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "max_depth",
            "maxDepth",
            "pattern",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MaxDepth,
            Pattern,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "maxDepth" | "max_depth" => Ok(GeneratedField::MaxDepth),
                            "pattern" => Ok(GeneratedField::Pattern),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WaitForTxRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.WaitForTxRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WaitForTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut max_depth__ = None;
                let mut pattern__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MaxDepth => {
                            if max_depth__.is_some() {
                                return Err(serde::de::Error::duplicate_field("maxDepth"));
                            }
                            max_depth__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Pattern => {
                            if pattern__.is_some() {
                                return Err(serde::de::Error::duplicate_field("pattern"));
                            }
                            pattern__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(WaitForTxRequest {
                    max_depth: max_depth__.unwrap_or_default(),
                    pattern: pattern__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.WaitForTxRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WaitForTxResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.item.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.WaitForTxResponse", len)?;
        if let Some(v) = self.item.as_ref() {
            struct_ser.serialize_field("item", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WaitForTxResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "item",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Item,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "item" => Ok(GeneratedField::Item),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WaitForTxResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.WaitForTxResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WaitForTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut item__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Item => {
                            if item__.is_some() {
                                return Err(serde::de::Error::duplicate_field("item"));
                            }
                            item__ = map.next_value()?;
                        }
                    }
                }
                Ok(WaitForTxResponse {
                    item: item__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.WaitForTxResponse", FIELDS, GeneratedVisitor)
    }
}
