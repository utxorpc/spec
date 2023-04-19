// @generated
impl serde::Serialize for Block {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.header.is_some() {
            len += 1;
        }
        if self.body.is_some() {
            len += 1;
        }
        if !self.cbor.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.Block", len)?;
        if let Some(v) = self.header.as_ref() {
            struct_ser.serialize_field("header", v)?;
        }
        if let Some(v) = self.body.as_ref() {
            struct_ser.serialize_field("body", v)?;
        }
        if !self.cbor.is_empty() {
            struct_ser.serialize_field("cbor", pbjson::private::base64::encode(&self.cbor).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Block {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "header",
            "body",
            "cbor",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Header,
            Body,
            Cbor,
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
                            "header" => Ok(GeneratedField::Header),
                            "body" => Ok(GeneratedField::Body),
                            "cbor" => Ok(GeneratedField::Cbor),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Block;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.Block")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Block, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut header__ = None;
                let mut body__ = None;
                let mut cbor__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Header => {
                            if header__.is_some() {
                                return Err(serde::de::Error::duplicate_field("header"));
                            }
                            header__ = map.next_value()?;
                        }
                        GeneratedField::Body => {
                            if body__.is_some() {
                                return Err(serde::de::Error::duplicate_field("body"));
                            }
                            body__ = map.next_value()?;
                        }
                        GeneratedField::Cbor => {
                            if cbor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cbor"));
                            }
                            cbor__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(Block {
                    header: header__,
                    body: body__,
                    cbor: cbor__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.Block", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BlockBody {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.BlockBody", len)?;
        if !self.tx.is_empty() {
            struct_ser.serialize_field("tx", &self.tx)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BlockBody {
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
            type Value = BlockBody;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.BlockBody")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<BlockBody, V::Error>
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
                Ok(BlockBody {
                    tx: tx__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.BlockBody", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BlockHeader {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.BlockHeader", len)?;
        if self.slot != 0 {
            struct_ser.serialize_field("slot", ToString::to_string(&self.slot).as_str())?;
        }
        if self.height != 0 {
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.hash.is_empty() {
            struct_ser.serialize_field("hash", &self.hash)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BlockHeader {
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
            type Value = BlockHeader;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.BlockHeader")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<BlockHeader, V::Error>
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
                            hash__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(BlockHeader {
                    slot: slot__.unwrap_or_default(),
                    height: height__.unwrap_or_default(),
                    hash: hash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.BlockHeader", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BlockRef {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.BlockRef", len)?;
        if self.slot != 0 {
            struct_ser.serialize_field("slot", ToString::to_string(&self.slot).as_str())?;
        }
        if self.height != 0 {
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.hash.is_empty() {
            struct_ser.serialize_field("hash", &self.hash)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BlockRef {
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
            type Value = BlockRef;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.BlockRef")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<BlockRef, V::Error>
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
                            hash__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(BlockRef {
                    slot: slot__.unwrap_or_default(),
                    height: height__.unwrap_or_default(),
                    hash: hash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.BlockRef", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DumpHistoryRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.start_token.is_some() {
            len += 1;
        }
        if self.max_items != 0 {
            len += 1;
        }
        if self.field_mask.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.DumpHistoryRequest", len)?;
        if let Some(v) = self.start_token.as_ref() {
            struct_ser.serialize_field("startToken", v)?;
        }
        if self.max_items != 0 {
            struct_ser.serialize_field("maxItems", &self.max_items)?;
        }
        if let Some(v) = self.field_mask.as_ref() {
            struct_ser.serialize_field("fieldMask", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DumpHistoryRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "start_token",
            "startToken",
            "max_items",
            "maxItems",
            "field_mask",
            "fieldMask",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StartToken,
            MaxItems,
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
                            "startToken" | "start_token" => Ok(GeneratedField::StartToken),
                            "maxItems" | "max_items" => Ok(GeneratedField::MaxItems),
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
            type Value = DumpHistoryRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.DumpHistoryRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<DumpHistoryRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut start_token__ = None;
                let mut max_items__ = None;
                let mut field_mask__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::StartToken => {
                            if start_token__.is_some() {
                                return Err(serde::de::Error::duplicate_field("startToken"));
                            }
                            start_token__ = map.next_value()?;
                        }
                        GeneratedField::MaxItems => {
                            if max_items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("maxItems"));
                            }
                            max_items__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::FieldMask => {
                            if field_mask__.is_some() {
                                return Err(serde::de::Error::duplicate_field("fieldMask"));
                            }
                            field_mask__ = map.next_value()?;
                        }
                    }
                }
                Ok(DumpHistoryRequest {
                    start_token: start_token__,
                    max_items: max_items__.unwrap_or_default(),
                    field_mask: field_mask__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.DumpHistoryRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DumpHistoryResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.block.is_empty() {
            len += 1;
        }
        if self.next_token.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.DumpHistoryResponse", len)?;
        if !self.block.is_empty() {
            struct_ser.serialize_field("block", &self.block)?;
        }
        if let Some(v) = self.next_token.as_ref() {
            struct_ser.serialize_field("nextToken", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DumpHistoryResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "block",
            "next_token",
            "nextToken",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Block,
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
                            "block" => Ok(GeneratedField::Block),
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
            type Value = DumpHistoryResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.DumpHistoryResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<DumpHistoryResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut block__ = None;
                let mut next_token__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Block => {
                            if block__.is_some() {
                                return Err(serde::de::Error::duplicate_field("block"));
                            }
                            block__ = Some(map.next_value()?);
                        }
                        GeneratedField::NextToken => {
                            if next_token__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nextToken"));
                            }
                            next_token__ = map.next_value()?;
                        }
                    }
                }
                Ok(DumpHistoryResponse {
                    block: block__.unwrap_or_default(),
                    next_token: next_token__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.DumpHistoryResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FetchBlockRequest {
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
        if self.field_mask.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.FetchBlockRequest", len)?;
        if !self.r#ref.is_empty() {
            struct_ser.serialize_field("ref", &self.r#ref)?;
        }
        if let Some(v) = self.field_mask.as_ref() {
            struct_ser.serialize_field("fieldMask", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FetchBlockRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "ref",
            "field_mask",
            "fieldMask",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Ref,
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
                            "ref" => Ok(GeneratedField::Ref),
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
            type Value = FetchBlockRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.FetchBlockRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FetchBlockRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#ref__ = None;
                let mut field_mask__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Ref => {
                            if r#ref__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ref"));
                            }
                            r#ref__ = Some(map.next_value()?);
                        }
                        GeneratedField::FieldMask => {
                            if field_mask__.is_some() {
                                return Err(serde::de::Error::duplicate_field("fieldMask"));
                            }
                            field_mask__ = map.next_value()?;
                        }
                    }
                }
                Ok(FetchBlockRequest {
                    r#ref: r#ref__.unwrap_or_default(),
                    field_mask: field_mask__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.FetchBlockRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FetchBlockResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.block.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.FetchBlockResponse", len)?;
        if !self.block.is_empty() {
            struct_ser.serialize_field("block", &self.block)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FetchBlockResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "block",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Block,
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
                            "block" => Ok(GeneratedField::Block),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FetchBlockResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.FetchBlockResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FetchBlockResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut block__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Block => {
                            if block__.is_some() {
                                return Err(serde::de::Error::duplicate_field("block"));
                            }
                            block__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(FetchBlockResponse {
                    block: block__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.FetchBlockResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FollowTipRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.intersect.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.FollowTipRequest", len)?;
        if !self.intersect.is_empty() {
            struct_ser.serialize_field("intersect", &self.intersect)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FollowTipRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "intersect",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Intersect,
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
                            "intersect" => Ok(GeneratedField::Intersect),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FollowTipRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.FollowTipRequest")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FollowTipRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut intersect__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Intersect => {
                            if intersect__.is_some() {
                                return Err(serde::de::Error::duplicate_field("intersect"));
                            }
                            intersect__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(FollowTipRequest {
                    intersect: intersect__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.FollowTipRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FollowTipResponse {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.FollowTipResponse", len)?;
        if let Some(v) = self.action.as_ref() {
            match v {
                follow_tip_response::Action::Apply(v) => {
                    struct_ser.serialize_field("apply", v)?;
                }
                follow_tip_response::Action::Undo(v) => {
                    struct_ser.serialize_field("undo", v)?;
                }
                follow_tip_response::Action::Reset(v) => {
                    struct_ser.serialize_field("reset", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FollowTipResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "apply",
            "undo",
            "reset",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Apply,
            Undo,
            Reset,
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
                            "reset" => Ok(GeneratedField::Reset),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FollowTipResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.FollowTipResponse")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<FollowTipResponse, V::Error>
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
                            action__ = map.next_value::<::std::option::Option<_>>()?.map(follow_tip_response::Action::Apply)
;
                        }
                        GeneratedField::Undo => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("undo"));
                            }
                            action__ = map.next_value::<::std::option::Option<_>>()?.map(follow_tip_response::Action::Undo)
;
                        }
                        GeneratedField::Reset => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("reset"));
                            }
                            action__ = map.next_value::<::std::option::Option<_>>()?.map(follow_tip_response::Action::Reset)
;
                        }
                    }
                }
                Ok(FollowTipResponse {
                    action: action__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.FollowTipResponse", FIELDS, GeneratedVisitor)
    }
}
