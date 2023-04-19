// @generated
impl serde::Serialize for AnyChainUtxo {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.AnyChainUtxo", len)?;
        if let Some(v) = self.chain.as_ref() {
            match v {
                any_chain_utxo::Chain::Cardano(v) => {
                    struct_ser.serialize_field("cardano", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AnyChainUtxo {
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
            type Value = AnyChainUtxo;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.AnyChainUtxo")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyChainUtxo, V::Error>
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
                            chain__ = map.next_value::<::std::option::Option<_>>()?.map(any_chain_utxo::Chain::Cardano)
;
                        }
                    }
                }
                Ok(AnyChainUtxo {
                    chain: chain__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.AnyChainUtxo", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ChainParam {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.key.is_empty() {
            len += 1;
        }
        if !self.value.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.ChainParam", len)?;
        if !self.key.is_empty() {
            struct_ser.serialize_field("key", &self.key)?;
        }
        if !self.value.is_empty() {
            struct_ser.serialize_field("value", pbjson::private::base64::encode(&self.value).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ChainParam {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "key",
            "value",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Key,
            Value,
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
                            "key" => Ok(GeneratedField::Key),
                            "value" => Ok(GeneratedField::Value),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ChainParam;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.ChainParam")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<ChainParam, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut key__ = None;
                let mut value__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Key => {
                            if key__.is_some() {
                                return Err(serde::de::Error::duplicate_field("key"));
                            }
                            key__ = Some(map.next_value()?);
                        }
                        GeneratedField::Value => {
                            if value__.is_some() {
                                return Err(serde::de::Error::duplicate_field("value"));
                            }
                            value__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(ChainParam {
                    key: key__.unwrap_or_default(),
                    value: value__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.ChainParam", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ChainPoint {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.slot != 0 {
            len += 1;
        }
        if self.height != 0 {
            len += 1;
        }
        if !self.hash.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.ChainPoint", len)?;
        if self.slot != 0 {
            struct_ser.serialize_field("slot", ToString::to_string(&self.slot).as_str())?;
        }
        if self.height != 0 {
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.hash.is_empty() {
            struct_ser.serialize_field("hash", pbjson::private::base64::encode(&self.hash).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ChainPoint {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "slot",
            "height",
            "hash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Slot,
            Height,
            Hash,
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
                            "slot" => Ok(GeneratedField::Slot),
                            "height" => Ok(GeneratedField::Height),
                            "hash" => Ok(GeneratedField::Hash),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ChainPoint;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.ChainPoint")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<ChainPoint, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut slot__ = None;
                let mut height__ = None;
                let mut hash__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Slot => {
                            if slot__.is_some() {
                                return Err(serde::de::Error::duplicate_field("slot"));
                            }
                            slot__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Hash => {
                            if hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("hash"));
                            }
                            hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(ChainPoint {
                    slot: slot__.unwrap_or_default(),
                    height: height__.unwrap_or_default(),
                    hash: hash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.ChainPoint", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetChainParamRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.param.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetChainParamRequest", len)?;
        if !self.param.is_empty() {
            struct_ser.serialize_field("param", &self.param)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetChainParamRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "param",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Param,
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
                            "param" => Ok(GeneratedField::Param),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetChainParamRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetChainParamRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetChainParamRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut param__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Param => {
                            if param__.is_some() {
                                return Err(serde::de::Error::duplicate_field("param"));
                            }
                            param__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(GetChainParamRequest {
                    param: param__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetChainParamRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetChainParamResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.param.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetChainParamResponse", len)?;
        if !self.param.is_empty() {
            struct_ser.serialize_field("param", &self.param)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetChainParamResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "param",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Param,
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
                            "param" => Ok(GeneratedField::Param),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetChainParamResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetChainParamResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetChainParamResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut param__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Param => {
                            if param__.is_some() {
                                return Err(serde::de::Error::duplicate_field("param"));
                            }
                            param__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(GetChainParamResponse {
                    param: param__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetChainParamResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetChainTipRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetChainTipRequest", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetChainTipRequest {
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
            type Value = GetChainTipRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetChainTipRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetChainTipRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(GetChainTipRequest {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetChainTipRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetChainTipResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.tip.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetChainTipResponse", len)?;
        if let Some(v) = self.tip.as_ref() {
            struct_ser.serialize_field("tip", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetChainTipResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tip",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tip,
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
                            "tip" => Ok(GeneratedField::Tip),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetChainTipResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetChainTipResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetChainTipResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tip__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Tip => {
                            if tip__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tip"));
                            }
                            tip__ = map.next_value()?;
                        }
                    }
                }
                Ok(GetChainTipResponse {
                    tip: tip__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetChainTipResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetUtxoByAddressRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.address.is_empty() {
            len += 1;
        }
        if self.acquire_point.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetUtxoByAddressRequest", len)?;
        if !self.address.is_empty() {
            struct_ser.serialize_field("address", &self.address.iter().map(pbjson::private::base64::encode).collect::<Vec<_>>())?;
        }
        if let Some(v) = self.acquire_point.as_ref() {
            struct_ser.serialize_field("acquirePoint", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetUtxoByAddressRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "address",
            "acquire_point",
            "acquirePoint",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Address,
            AcquirePoint,
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
                            "acquirePoint" | "acquire_point" => Ok(GeneratedField::AcquirePoint),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetUtxoByAddressRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetUtxoByAddressRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetUtxoByAddressRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut address__ = None;
                let mut acquire_point__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Address => {
                            if address__.is_some() {
                                return Err(serde::de::Error::duplicate_field("address"));
                            }
                            address__ = 
                                Some(map.next_value::<Vec<::pbjson::private::BytesDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                        GeneratedField::AcquirePoint => {
                            if acquire_point__.is_some() {
                                return Err(serde::de::Error::duplicate_field("acquirePoint"));
                            }
                            acquire_point__ = map.next_value()?;
                        }
                    }
                }
                Ok(GetUtxoByAddressRequest {
                    address: address__.unwrap_or_default(),
                    acquire_point: acquire_point__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetUtxoByAddressRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetUtxoByAddressResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.items.is_empty() {
            len += 1;
        }
        if !self.next_token.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetUtxoByAddressResponse", len)?;
        if !self.items.is_empty() {
            struct_ser.serialize_field("items", &self.items)?;
        }
        if !self.next_token.is_empty() {
            struct_ser.serialize_field("nextToken", &self.next_token)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetUtxoByAddressResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "items",
            "next_token",
            "nextToken",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Items,
            NextToken,
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
                            "items" => Ok(GeneratedField::Items),
                            "nextToken" | "next_token" => Ok(GeneratedField::NextToken),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetUtxoByAddressResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetUtxoByAddressResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetUtxoByAddressResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut items__ = None;
                let mut next_token__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Items => {
                            if items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("items"));
                            }
                            items__ = Some(map.next_value()?);
                        }
                        GeneratedField::NextToken => {
                            if next_token__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nextToken"));
                            }
                            next_token__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(GetUtxoByAddressResponse {
                    items: items__.unwrap_or_default(),
                    next_token: next_token__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetUtxoByAddressResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetUtxoByRefRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.r#ref.is_empty() {
            len += 1;
        }
        if self.acquire_point.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetUtxoByRefRequest", len)?;
        if !self.r#ref.is_empty() {
            struct_ser.serialize_field("ref", &self.r#ref)?;
        }
        if let Some(v) = self.acquire_point.as_ref() {
            struct_ser.serialize_field("acquirePoint", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetUtxoByRefRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "ref",
            "acquire_point",
            "acquirePoint",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Ref,
            AcquirePoint,
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
                            "ref" => Ok(GeneratedField::Ref),
                            "acquirePoint" | "acquire_point" => Ok(GeneratedField::AcquirePoint),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetUtxoByRefRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetUtxoByRefRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetUtxoByRefRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#ref__ = None;
                let mut acquire_point__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Ref => {
                            if r#ref__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ref"));
                            }
                            r#ref__ = Some(map.next_value()?);
                        }
                        GeneratedField::AcquirePoint => {
                            if acquire_point__.is_some() {
                                return Err(serde::de::Error::duplicate_field("acquirePoint"));
                            }
                            acquire_point__ = map.next_value()?;
                        }
                    }
                }
                Ok(GetUtxoByRefRequest {
                    r#ref: r#ref__.unwrap_or_default(),
                    acquire_point: acquire_point__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetUtxoByRefRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetUtxoByRefResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.items.is_empty() {
            len += 1;
        }
        if !self.next_token.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.GetUtxoByRefResponse", len)?;
        if !self.items.is_empty() {
            struct_ser.serialize_field("items", &self.items)?;
        }
        if !self.next_token.is_empty() {
            struct_ser.serialize_field("nextToken", &self.next_token)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetUtxoByRefResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "items",
            "next_token",
            "nextToken",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Items,
            NextToken,
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
                            "items" => Ok(GeneratedField::Items),
                            "nextToken" | "next_token" => Ok(GeneratedField::NextToken),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetUtxoByRefResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.GetUtxoByRefResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GetUtxoByRefResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut items__ = None;
                let mut next_token__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Items => {
                            if items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("items"));
                            }
                            items__ = Some(map.next_value()?);
                        }
                        GeneratedField::NextToken => {
                            if next_token__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nextToken"));
                            }
                            next_token__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(GetUtxoByRefResponse {
                    items: items__.unwrap_or_default(),
                    next_token: next_token__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.GetUtxoByRefResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for HoldUtxoRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.refs.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.HoldUtxoRequest", len)?;
        if !self.refs.is_empty() {
            struct_ser.serialize_field("refs", &self.refs)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for HoldUtxoRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "refs",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Refs,
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
                            "refs" => Ok(GeneratedField::Refs),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = HoldUtxoRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.HoldUtxoRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<HoldUtxoRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut refs__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Refs => {
                            if refs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("refs"));
                            }
                            refs__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(HoldUtxoRequest {
                    refs: refs__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.HoldUtxoRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for HoldUtxoResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.lost.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.HoldUtxoResponse", len)?;
        if !self.lost.is_empty() {
            struct_ser.serialize_field("lost", &self.lost)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for HoldUtxoResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "lost",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Lost,
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
                            "lost" => Ok(GeneratedField::Lost),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = HoldUtxoResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.HoldUtxoResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<HoldUtxoResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut lost__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Lost => {
                            if lost__.is_some() {
                                return Err(serde::de::Error::duplicate_field("lost"));
                            }
                            lost__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(HoldUtxoResponse {
                    lost: lost__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.HoldUtxoResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for UtxoRef {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.hash.is_empty() {
            len += 1;
        }
        if self.index != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.state.v1.UtxoRef", len)?;
        if !self.hash.is_empty() {
            struct_ser.serialize_field("hash", pbjson::private::base64::encode(&self.hash).as_str())?;
        }
        if self.index != 0 {
            struct_ser.serialize_field("index", &self.index)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for UtxoRef {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "hash",
            "index",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Hash,
            Index,
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
                            "hash" => Ok(GeneratedField::Hash),
                            "index" => Ok(GeneratedField::Index),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = UtxoRef;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.state.v1.UtxoRef")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<UtxoRef, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut hash__ = None;
                let mut index__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Hash => {
                            if hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("hash"));
                            }
                            hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Index => {
                            if index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("index"));
                            }
                            index__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(UtxoRef {
                    hash: hash__.unwrap_or_default(),
                    index: index__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.state.v1.UtxoRef", FIELDS, GeneratedVisitor)
    }
}
