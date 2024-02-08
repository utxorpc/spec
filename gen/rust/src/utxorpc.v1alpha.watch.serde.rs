// @generated
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1alpha.watch.AnyChainTx", len)?;
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
                formatter.write_str("struct utxorpc.v1alpha.watch.AnyChainTx")
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
        deserializer.deserialize_struct("utxorpc.v1alpha.watch.AnyChainTx", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AnyChainTxPattern {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1alpha.watch.AnyChainTxPattern", len)?;
        if let Some(v) = self.chain.as_ref() {
            match v {
                any_chain_tx_pattern::Chain::Cardano(v) => {
                    struct_ser.serialize_field("cardano", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AnyChainTxPattern {
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
            type Value = AnyChainTxPattern;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1alpha.watch.AnyChainTxPattern")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyChainTxPattern, V::Error>
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
                            chain__ = map.next_value::<::std::option::Option<_>>()?.map(any_chain_tx_pattern::Chain::Cardano)
;
                        }
                    }
                }
                Ok(AnyChainTxPattern {
                    chain: chain__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1alpha.watch.AnyChainTxPattern", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxPredicate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.r#match.is_some() {
            len += 1;
        }
        if !self.not.is_empty() {
            len += 1;
        }
        if !self.all_of.is_empty() {
            len += 1;
        }
        if !self.any_of.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1alpha.watch.TxPredicate", len)?;
        if let Some(v) = self.r#match.as_ref() {
            struct_ser.serialize_field("match", v)?;
        }
        if !self.not.is_empty() {
            struct_ser.serialize_field("not", &self.not)?;
        }
        if !self.all_of.is_empty() {
            struct_ser.serialize_field("allOf", &self.all_of)?;
        }
        if !self.any_of.is_empty() {
            struct_ser.serialize_field("anyOf", &self.any_of)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxPredicate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "match",
            "not",
            "all_of",
            "allOf",
            "any_of",
            "anyOf",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Match,
            Not,
            AllOf,
            AnyOf,
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
                            "match" => Ok(GeneratedField::Match),
                            "not" => Ok(GeneratedField::Not),
                            "allOf" | "all_of" => Ok(GeneratedField::AllOf),
                            "anyOf" | "any_of" => Ok(GeneratedField::AnyOf),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxPredicate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1alpha.watch.TxPredicate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxPredicate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#match__ = None;
                let mut not__ = None;
                let mut all_of__ = None;
                let mut any_of__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Match => {
                            if r#match__.is_some() {
                                return Err(serde::de::Error::duplicate_field("match"));
                            }
                            r#match__ = map.next_value()?;
                        }
                        GeneratedField::Not => {
                            if not__.is_some() {
                                return Err(serde::de::Error::duplicate_field("not"));
                            }
                            not__ = Some(map.next_value()?);
                        }
                        GeneratedField::AllOf => {
                            if all_of__.is_some() {
                                return Err(serde::de::Error::duplicate_field("allOf"));
                            }
                            all_of__ = Some(map.next_value()?);
                        }
                        GeneratedField::AnyOf => {
                            if any_of__.is_some() {
                                return Err(serde::de::Error::duplicate_field("anyOf"));
                            }
                            any_of__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(TxPredicate {
                    r#match: r#match__,
                    not: not__.unwrap_or_default(),
                    all_of: all_of__.unwrap_or_default(),
                    any_of: any_of__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1alpha.watch.TxPredicate", FIELDS, GeneratedVisitor)
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
        if self.predicate.is_some() {
            len += 1;
        }
        if self.field_mask.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1alpha.watch.WatchTxRequest", len)?;
        if let Some(v) = self.predicate.as_ref() {
            struct_ser.serialize_field("predicate", v)?;
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
                formatter.write_str("struct utxorpc.v1alpha.watch.WatchTxRequest")
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
                            predicate__ = map.next_value()?;
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
                    predicate: predicate__,
                    field_mask: field_mask__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1alpha.watch.WatchTxRequest", FIELDS, GeneratedVisitor)
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1alpha.watch.WatchTxResponse", len)?;
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
                formatter.write_str("struct utxorpc.v1alpha.watch.WatchTxResponse")
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
        deserializer.deserialize_struct("utxorpc.v1alpha.watch.WatchTxResponse", FIELDS, GeneratedVisitor)
    }
}
