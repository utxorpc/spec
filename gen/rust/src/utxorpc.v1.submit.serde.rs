// @generated
impl serde::Serialize for AnyChainTx {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.AnyChainTx", len)?;
        if let Some(v) = self.r#type.as_ref() {
            match v {
                any_chain_tx::Type::Raw(v) => {
                    struct_ser.serialize_field("raw", pbjson::private::base64::encode(&v).as_str())?;
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
            "raw",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Raw,
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
                            "raw" => Ok(GeneratedField::Raw),
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
                formatter.write_str("struct utxorpc.v1.submit.AnyChainTx")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyChainTx, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#type__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Raw => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("raw"));
                            }
                            r#type__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| any_chain_tx::Type::Raw(x.0));
                        }
                    }
                }
                Ok(AnyChainTx {
                    r#type: r#type__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.AnyChainTx", FIELDS, GeneratedVisitor)
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.AnyChainTxPattern", len)?;
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
                formatter.write_str("struct utxorpc.v1.submit.AnyChainTxPattern")
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
        deserializer.deserialize_struct("utxorpc.v1.submit.AnyChainTxPattern", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReadMempoolRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.txs.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.ReadMempoolRequest", len)?;
        if !self.txs.is_empty() {
            struct_ser.serialize_field("txs", &self.txs)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReadMempoolRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "txs",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Txs,
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
                            "txs" => Ok(GeneratedField::Txs),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ReadMempoolRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.ReadMempoolRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<ReadMempoolRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut txs__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Txs => {
                            if txs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("txs"));
                            }
                            txs__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(ReadMempoolRequest {
                    txs: txs__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.ReadMempoolRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReadMempoolResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.stage.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.ReadMempoolResponse", len)?;
        if !self.stage.is_empty() {
            let v = self.stage.iter().cloned().map(|v| {
                Stage::from_i32(v)
                    .ok_or_else(|| serde::ser::Error::custom(format!("Invalid variant {}", v)))
                }).collect::<Result<Vec<_>, _>>()?;
            struct_ser.serialize_field("stage", &v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReadMempoolResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "stage",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Stage,
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
                            "stage" => Ok(GeneratedField::Stage),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ReadMempoolResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.ReadMempoolResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<ReadMempoolResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut stage__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Stage => {
                            if stage__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stage"));
                            }
                            stage__ = Some(map.next_value::<Vec<Stage>>()?.into_iter().map(|x| x as i32).collect());
                        }
                    }
                }
                Ok(ReadMempoolResponse {
                    stage: stage__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.ReadMempoolResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Stage {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        let variant = match self {
            Self::Unspecified => "STAGE_UNSPECIFIED",
            Self::Acknowledged => "STAGE_ACKNOWLEDGED",
            Self::Mempool => "STAGE_MEMPOOL",
            Self::Network => "STAGE_NETWORK",
            Self::Confirmed => "STAGE_CONFIRMED",
        };
        serializer.serialize_str(variant)
    }
}
impl<'de> serde::Deserialize<'de> for Stage {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "STAGE_UNSPECIFIED",
            "STAGE_ACKNOWLEDGED",
            "STAGE_MEMPOOL",
            "STAGE_NETWORK",
            "STAGE_CONFIRMED",
        ];

        struct GeneratedVisitor;

        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Stage;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                write!(formatter, "expected one of: {:?}", &FIELDS)
            }

            fn visit_i64<E>(self, v: i64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                use std::convert::TryFrom;
                i32::try_from(v)
                    .ok()
                    .and_then(Stage::from_i32)
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Signed(v), &self)
                    })
            }

            fn visit_u64<E>(self, v: u64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                use std::convert::TryFrom;
                i32::try_from(v)
                    .ok()
                    .and_then(Stage::from_i32)
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Unsigned(v), &self)
                    })
            }

            fn visit_str<E>(self, value: &str) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                match value {
                    "STAGE_UNSPECIFIED" => Ok(Stage::Unspecified),
                    "STAGE_ACKNOWLEDGED" => Ok(Stage::Acknowledged),
                    "STAGE_MEMPOOL" => Ok(Stage::Mempool),
                    "STAGE_NETWORK" => Ok(Stage::Network),
                    "STAGE_CONFIRMED" => Ok(Stage::Confirmed),
                    _ => Err(serde::de::Error::unknown_variant(value, FIELDS)),
                }
            }
        }
        deserializer.deserialize_any(GeneratedVisitor)
    }
}
impl serde::Serialize for SubmitTxRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.tx.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.SubmitTxRequest", len)?;
        if !self.tx.is_empty() {
            struct_ser.serialize_field("tx", &self.tx)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for SubmitTxRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tx,
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
                            "tx" => Ok(GeneratedField::Tx),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = SubmitTxRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.SubmitTxRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<SubmitTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(SubmitTxRequest {
                    tx: tx__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.SubmitTxRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for SubmitTxResponse {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.SubmitTxResponse", len)?;
        if !self.r#ref.is_empty() {
            struct_ser.serialize_field("ref", &self.r#ref.iter().map(pbjson::private::base64::encode).collect::<Vec<_>>())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for SubmitTxResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "ref",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Ref,
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
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = SubmitTxResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.SubmitTxResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<SubmitTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#ref__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Ref => {
                            if r#ref__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ref"));
                            }
                            r#ref__ = 
                                Some(map.next_value::<Vec<::pbjson::private::BytesDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                    }
                }
                Ok(SubmitTxResponse {
                    r#ref: r#ref__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.SubmitTxResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxInMempool {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.tx.is_some() {
            len += 1;
        }
        if self.stage != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.TxInMempool", len)?;
        if let Some(v) = self.tx.as_ref() {
            struct_ser.serialize_field("tx", v)?;
        }
        if self.stage != 0 {
            let v = Stage::from_i32(self.stage)
                .ok_or_else(|| serde::ser::Error::custom(format!("Invalid variant {}", self.stage)))?;
            struct_ser.serialize_field("stage", &v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxInMempool {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx",
            "stage",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tx,
            Stage,
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
                            "tx" => Ok(GeneratedField::Tx),
                            "stage" => Ok(GeneratedField::Stage),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxInMempool;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.TxInMempool")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxInMempool, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx__ = None;
                let mut stage__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ = map.next_value()?;
                        }
                        GeneratedField::Stage => {
                            if stage__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stage"));
                            }
                            stage__ = Some(map.next_value::<Stage>()? as i32);
                        }
                    }
                }
                Ok(TxInMempool {
                    tx: tx__,
                    stage: stage__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.TxInMempool", FIELDS, GeneratedVisitor)
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.TxPredicate", len)?;
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
                formatter.write_str("struct utxorpc.v1.submit.TxPredicate")
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
        deserializer.deserialize_struct("utxorpc.v1.submit.TxPredicate", FIELDS, GeneratedVisitor)
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
        if !self.r#ref.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.WaitForTxRequest", len)?;
        if !self.r#ref.is_empty() {
            struct_ser.serialize_field("ref", &self.r#ref.iter().map(pbjson::private::base64::encode).collect::<Vec<_>>())?;
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
            "ref",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Ref,
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
                formatter.write_str("struct utxorpc.v1.submit.WaitForTxRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WaitForTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#ref__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Ref => {
                            if r#ref__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ref"));
                            }
                            r#ref__ = 
                                Some(map.next_value::<Vec<::pbjson::private::BytesDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                    }
                }
                Ok(WaitForTxRequest {
                    r#ref: r#ref__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.WaitForTxRequest", FIELDS, GeneratedVisitor)
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
        if !self.r#ref.is_empty() {
            len += 1;
        }
        if self.stage != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.WaitForTxResponse", len)?;
        if !self.r#ref.is_empty() {
            struct_ser.serialize_field("ref", pbjson::private::base64::encode(&self.r#ref).as_str())?;
        }
        if self.stage != 0 {
            let v = Stage::from_i32(self.stage)
                .ok_or_else(|| serde::ser::Error::custom(format!("Invalid variant {}", self.stage)))?;
            struct_ser.serialize_field("stage", &v)?;
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
            "ref",
            "stage",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Ref,
            Stage,
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
                            "stage" => Ok(GeneratedField::Stage),
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
                formatter.write_str("struct utxorpc.v1.submit.WaitForTxResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WaitForTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#ref__ = None;
                let mut stage__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Ref => {
                            if r#ref__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ref"));
                            }
                            r#ref__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Stage => {
                            if stage__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stage"));
                            }
                            stage__ = Some(map.next_value::<Stage>()? as i32);
                        }
                    }
                }
                Ok(WaitForTxResponse {
                    r#ref: r#ref__.unwrap_or_default(),
                    stage: stage__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.WaitForTxResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WatchMempoolRequest {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.WatchMempoolRequest", len)?;
        if let Some(v) = self.predicate.as_ref() {
            struct_ser.serialize_field("predicate", v)?;
        }
        if let Some(v) = self.field_mask.as_ref() {
            struct_ser.serialize_field("fieldMask", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WatchMempoolRequest {
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
            type Value = WatchMempoolRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.WatchMempoolRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WatchMempoolRequest, V::Error>
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
                Ok(WatchMempoolRequest {
                    predicate: predicate__,
                    field_mask: field_mask__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.WatchMempoolRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WatchMempoolResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.tx.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.v1.submit.WatchMempoolResponse", len)?;
        if let Some(v) = self.tx.as_ref() {
            struct_ser.serialize_field("tx", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WatchMempoolResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tx,
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
                            "tx" => Ok(GeneratedField::Tx),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WatchMempoolResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.v1.submit.WatchMempoolResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WatchMempoolResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ = map.next_value()?;
                        }
                    }
                }
                Ok(WatchMempoolResponse {
                    tx: tx__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.v1.submit.WatchMempoolResponse", FIELDS, GeneratedVisitor)
    }
}
