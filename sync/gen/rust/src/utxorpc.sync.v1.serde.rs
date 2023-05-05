// @generated
impl serde::Serialize for AnyChainBlock {
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
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.AnyChainBlock", len)?;
        if let Some(v) = self.chain.as_ref() {
            match v {
                any_chain_block::Chain::Raw(v) => {
                    struct_ser.serialize_field("raw", pbjson::private::base64::encode(&v).as_str())?;
                }
                any_chain_block::Chain::Cardano(v) => {
                    struct_ser.serialize_field("cardano", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AnyChainBlock {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "raw",
            "cardano",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Raw,
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
                            "raw" => Ok(GeneratedField::Raw),
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
            type Value = AnyChainBlock;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.sync.v1.AnyChainBlock")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AnyChainBlock, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut chain__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Raw => {
                            if chain__.is_some() {
                                return Err(serde::de::Error::duplicate_field("raw"));
                            }
                            chain__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| any_chain_block::Chain::Raw(x.0));
                        }
                        GeneratedField::Cardano => {
                            if chain__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cardano"));
                            }
                            chain__ = map.next_value::<::std::option::Option<_>>()?.map(any_chain_block::Chain::Cardano)
;
                        }
                    }
                }
                Ok(AnyChainBlock {
                    chain: chain__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.sync.v1.AnyChainBlock", FIELDS, GeneratedVisitor)
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
        if self.index != 0 {
            len += 1;
        }
        if !self.hash.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.sync.v1.BlockRef", len)?;
        if self.index != 0 {
            struct_ser.serialize_field("index", ToString::to_string(&self.index).as_str())?;
        }
        if !self.hash.is_empty() {
            struct_ser.serialize_field("hash", pbjson::private::base64::encode(&self.hash).as_str())?;
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
            "index",
            "hash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Index,
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
                            "index" => Ok(GeneratedField::Index),
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
                let mut index__ = None;
                let mut hash__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Index => {
                            if index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("index"));
                            }
                            index__ = 
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
                Ok(BlockRef {
                    index: index__.unwrap_or_default(),
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
