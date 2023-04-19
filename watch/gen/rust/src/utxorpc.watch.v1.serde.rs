// @generated
impl serde::Serialize for AddressPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.match_source.is_empty() {
            len += 1;
        }
        if !self.match_target.is_empty() {
            len += 1;
        }
        if !self.match_any.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.AddressPredicate", len)?;
        if !self.match_source.is_empty() {
            struct_ser.serialize_field("matchSource", pbjson::private::base64::encode(&self.match_source).as_str())?;
        }
        if !self.match_target.is_empty() {
            struct_ser.serialize_field("matchTarget", pbjson::private::base64::encode(&self.match_target).as_str())?;
        }
        if !self.match_any.is_empty() {
            struct_ser.serialize_field("matchAny", pbjson::private::base64::encode(&self.match_any).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AddressPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "match_source",
            "matchSource",
            "match_target",
            "matchTarget",
            "match_any",
            "matchAny",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MatchSource,
            MatchTarget,
            MatchAny,
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
                            "matchSource" | "match_source" => Ok(GeneratedField::MatchSource),
                            "matchTarget" | "match_target" => Ok(GeneratedField::MatchTarget),
                            "matchAny" | "match_any" => Ok(GeneratedField::MatchAny),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AddressPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.AddressPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AddressPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut match_source__ = None;
                let mut match_target__ = None;
                let mut match_any__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MatchSource => {
                            if match_source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchSource"));
                            }
                            match_source__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MatchTarget => {
                            if match_target__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchTarget"));
                            }
                            match_target__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MatchAny => {
                            if match_any__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchAny"));
                            }
                            match_any__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(AddressPredicate {
                    match_source: match_source__.unwrap_or_default(),
                    match_target: match_target__.unwrap_or_default(),
                    match_any: match_any__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.AddressPredicate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AnyChainTx {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.chain.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.AnyChainTx", len)?;
        if let Some(v) = self.chain.as_ref() {
            match v {
                any_chain_tx::Chain::Cardano(v) => {
                    struct_ser.serialize_field("cardano", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AnyChainTx {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "cardano",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Cardano,
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
                            "cardano" => Ok(GeneratedField::Cardano),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AnyChainTx;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.AnyChainTx")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyChainTx, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut chain__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Cardano => {
                            if chain__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cardano"));
                            }
                            chain__ = map.next_value::<::std::option::Option<_>>()?.map(any_chain_tx::Chain::Cardano)
;
                        }
                    }
                }
                Ok(AnyChainTx {
                    chain: chain__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.AnyChainTx", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AnyPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.r#type.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.AnyPredicate", len)?;
        if let Some(v) = self.r#type.as_ref() {
            match v {
                any_predicate::Type::Address(v) => {
                    struct_ser.serialize_field("address", v)?;
                }
                any_predicate::Type::Asset(v) => {
                    struct_ser.serialize_field("asset", v)?;
                }
                any_predicate::Type::Utxo(v) => {
                    struct_ser.serialize_field("utxo", v)?;
                }
                any_predicate::Type::Datum(v) => {
                    struct_ser.serialize_field("datum", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AnyPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "address",
            "asset",
            "utxo",
            "datum",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Address,
            Asset,
            Utxo,
            Datum,
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
                            "address" => Ok(GeneratedField::Address),
                            "asset" => Ok(GeneratedField::Asset),
                            "utxo" => Ok(GeneratedField::Utxo),
                            "datum" => Ok(GeneratedField::Datum),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AnyPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.AnyPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#type__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Address => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("address"));
                            }
                            r#type__ = map.next_value::<::std::option::Option<_>>()?.map(any_predicate::Type::Address)
;
                        }
                        GeneratedField::Asset => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("asset"));
                            }
                            r#type__ = map.next_value::<::std::option::Option<_>>()?.map(any_predicate::Type::Asset)
;
                        }
                        GeneratedField::Utxo => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("utxo"));
                            }
                            r#type__ = map.next_value::<::std::option::Option<_>>()?.map(any_predicate::Type::Utxo)
;
                        }
                        GeneratedField::Datum => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("datum"));
                            }
                            r#type__ = map.next_value::<::std::option::Option<_>>()?.map(any_predicate::Type::Datum)
;
                        }
                    }
                }
                Ok(AnyPredicate {
                    r#type: r#type__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.AnyPredicate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AssetPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.match_policy.is_empty() {
            len += 1;
        }
        if !self.match_name.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.AssetPredicate", len)?;
        if !self.match_policy.is_empty() {
            struct_ser.serialize_field("matchPolicy", pbjson::private::base64::encode(&self.match_policy).as_str())?;
        }
        if !self.match_name.is_empty() {
            struct_ser.serialize_field("matchName", pbjson::private::base64::encode(&self.match_name).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AssetPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "match_policy",
            "matchPolicy",
            "match_name",
            "matchName",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MatchPolicy,
            MatchName,
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
                            "matchPolicy" | "match_policy" => Ok(GeneratedField::MatchPolicy),
                            "matchName" | "match_name" => Ok(GeneratedField::MatchName),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AssetPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.AssetPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AssetPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut match_policy__ = None;
                let mut match_name__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MatchPolicy => {
                            if match_policy__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchPolicy"));
                            }
                            match_policy__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MatchName => {
                            if match_name__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchName"));
                            }
                            match_name__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(AssetPredicate {
                    match_policy: match_policy__.unwrap_or_default(),
                    match_name: match_name__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.AssetPredicate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DatumPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.match_hash.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.DatumPredicate", len)?;
        if !self.match_hash.is_empty() {
            struct_ser.serialize_field("matchHash", pbjson::private::base64::encode(&self.match_hash).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DatumPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "match_hash",
            "matchHash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MatchHash,
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
                            "matchHash" | "match_hash" => Ok(GeneratedField::MatchHash),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DatumPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.DatumPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<DatumPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut match_hash__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MatchHash => {
                            if match_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchHash"));
                            }
                            match_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(DatumPredicate {
                    match_hash: match_hash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.DatumPredicate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for UtxoPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.match_hash.is_empty() {
            len += 1;
        }
        if self.match_index != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.UtxoPredicate", len)?;
        if !self.match_hash.is_empty() {
            struct_ser.serialize_field("matchHash", pbjson::private::base64::encode(&self.match_hash).as_str())?;
        }
        if self.match_index != 0 {
            struct_ser.serialize_field("matchIndex", &self.match_index)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for UtxoPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "match_hash",
            "matchHash",
            "match_index",
            "matchIndex",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            MatchHash,
            MatchIndex,
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
                            "matchHash" | "match_hash" => Ok(GeneratedField::MatchHash),
                            "matchIndex" | "match_index" => Ok(GeneratedField::MatchIndex),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = UtxoPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.UtxoPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<UtxoPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut match_hash__ = None;
                let mut match_index__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::MatchHash => {
                            if match_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchHash"));
                            }
                            match_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MatchIndex => {
                            if match_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("matchIndex"));
                            }
                            match_index__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(UtxoPredicate {
                    match_hash: match_hash__.unwrap_or_default(),
                    match_index: match_index__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.UtxoPredicate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WatchTxRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.predicate.is_empty() {
            len += 1;
        }
        if self.field_mask.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.WatchTxRequest", len)?;
        if !self.predicate.is_empty() {
            struct_ser.serialize_field("predicate", &self.predicate)?;
        }
        if let Some(v) = self.field_mask.as_ref() {
            struct_ser.serialize_field("fieldMask", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WatchTxRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "predicate",
            "field_mask",
            "fieldMask",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Predicate,
            FieldMask,
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
                            "predicate" => Ok(GeneratedField::Predicate),
                            "fieldMask" | "field_mask" => Ok(GeneratedField::FieldMask),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WatchTxRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.WatchTxRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WatchTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut predicate__ = None;
                let mut field_mask__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Predicate => {
                            if predicate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("predicate"));
                            }
                            predicate__ = Some(map.next_value()?);
                        }
                        GeneratedField::FieldMask => {
                            if field_mask__.is_some() {
                                return Err(serde::de::Error::duplicate_field("fieldMask"));
                            }
                            field_mask__ = map.next_value()?;
                        }
                    }
                }
                Ok(WatchTxRequest {
                    predicate: predicate__.unwrap_or_default(),
                    field_mask: field_mask__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.WatchTxRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WatchTxResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.action.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.watch.v1.WatchTxResponse", len)?;
        if let Some(v) = self.action.as_ref() {
            match v {
                watch_tx_response::Action::Apply(v) => {
                    struct_ser.serialize_field("apply", v)?;
                }
                watch_tx_response::Action::Undo(v) => {
                    struct_ser.serialize_field("undo", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WatchTxResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "apply",
            "undo",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Apply,
            Undo,
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
                            "apply" => Ok(GeneratedField::Apply),
                            "undo" => Ok(GeneratedField::Undo),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WatchTxResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.watch.v1.WatchTxResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WatchTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut action__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Apply => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("apply"));
                            }
                            action__ = map.next_value::<::std::option::Option<_>>()?.map(watch_tx_response::Action::Apply)
;
                        }
                        GeneratedField::Undo => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("undo"));
                            }
                            action__ = map.next_value::<::std::option::Option<_>>()?.map(watch_tx_response::Action::Undo)
;
                        }
                    }
                }
                Ok(WatchTxResponse {
                    action: action__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.watch.v1.WatchTxResponse", FIELDS, GeneratedVisitor)
    }
}
