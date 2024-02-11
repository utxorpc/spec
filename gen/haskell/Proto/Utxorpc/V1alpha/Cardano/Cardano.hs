{- This file was auto-generated from utxorpc/v1alpha/cardano/cardano.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.V1alpha.Cardano.Cardano (
        AddressPattern(), Asset(), AssetPattern(), AuxData(), BigInt(),
        BigInt'BigInt(..), _BigInt'Int, _BigInt'BigUInt, _BigInt'BigNInt,
        Block(), BlockBody(), BlockHeader(), Certificate(),
        Certificate'Certificate(..), _Certificate'StakeRegistration,
        _Certificate'StakeDeregistration, _Certificate'StakeDelegation,
        _Certificate'PoolRegistration, _Certificate'PoolRetirement,
        _Certificate'GenesisKeyDelegation, _Certificate'MirCert,
        Collateral(), Constr(), DatumPattern(), GenesisKeyDelegationCert(),
        Metadata(), Metadatum(), Metadatum'Metadatum(..), _Metadatum'Int,
        _Metadatum'Bytes, _Metadatum'Text, _Metadatum'Array,
        _Metadatum'Map, MetadatumArray(), MetadatumMap(), MetadatumPair(),
        MirCert(), MirSource(..), MirSource(), MirSource'UnrecognizedValue,
        MirTarget(), Multiasset(), NativeScript(),
        NativeScript'NativeScript(..), _NativeScript'ScriptPubkey,
        _NativeScript'ScriptAll, _NativeScript'ScriptAny,
        _NativeScript'ScriptNOfK, _NativeScript'InvalidBefore,
        _NativeScript'InvalidHereafter, NativeScriptList(),
        OutputPattern(), PlutusData(), PlutusData'PlutusData(..),
        _PlutusData'Constr, _PlutusData'Map, _PlutusData'BigInt,
        _PlutusData'BoundedBytes, _PlutusData'Array, PlutusDataArray(),
        PlutusDataMap(), PlutusDataPair(), PoolMetadata(),
        PoolRegistrationCert(), PoolRetirementCert(), RationalNumber(),
        Redeemer(), RedeemerPurpose(..), RedeemerPurpose(),
        RedeemerPurpose'UnrecognizedValue, Relay(), Script(),
        Script'Script(..), _Script'Native, _Script'PlutusV1,
        _Script'PlutusV2, ScriptNOfK(), StakeCredential(),
        StakeCredential'StakeCredential(..), _StakeCredential'AddrKeyHash,
        _StakeCredential'ScriptHash, StakeDelegationCert(), Tx(),
        TxInput(), TxOutput(), TxPattern(), TxPattern'TxPattern(..),
        _TxPattern'AnyOutput, _TxPattern'AnyAddress, _TxPattern'AnyAsset,
        _TxPattern'AnyDatum, TxValidity(), VKeyWitness(), Withdrawal(),
        WitnessSet()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.byronAddress' @:: Lens' AddressPattern Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.paymentPart' @:: Lens' AddressPattern Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.delegationPart' @:: Lens' AddressPattern Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.paymentIsScript' @:: Lens' AddressPattern Prelude.Bool@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.delegationIsScript' @:: Lens' AddressPattern Prelude.Bool@ -}
data AddressPattern
  = AddressPattern'_constructor {_AddressPattern'byronAddress :: !Data.ByteString.ByteString,
                                 _AddressPattern'paymentPart :: !Data.ByteString.ByteString,
                                 _AddressPattern'delegationPart :: !Data.ByteString.ByteString,
                                 _AddressPattern'paymentIsScript :: !Prelude.Bool,
                                 _AddressPattern'delegationIsScript :: !Prelude.Bool,
                                 _AddressPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressPattern "byronAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPattern'byronAddress
           (\ x__ y__ -> x__ {_AddressPattern'byronAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPattern "paymentPart" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPattern'paymentPart
           (\ x__ y__ -> x__ {_AddressPattern'paymentPart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPattern "delegationPart" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPattern'delegationPart
           (\ x__ y__ -> x__ {_AddressPattern'delegationPart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPattern "paymentIsScript" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPattern'paymentIsScript
           (\ x__ y__ -> x__ {_AddressPattern'paymentIsScript = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPattern "delegationIsScript" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPattern'delegationIsScript
           (\ x__ y__ -> x__ {_AddressPattern'delegationIsScript = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressPattern where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.AddressPattern"
  packedMessageDescriptor _
    = "\n\
      \\SOAddressPattern\DC2#\n\
      \\rbyron_address\CAN\SOH \SOH(\fR\fbyronAddress\DC2!\n\
      \\fpayment_part\CAN\STX \SOH(\fR\vpaymentPart\DC2'\n\
      \\SIdelegation_part\CAN\ETX \SOH(\fR\SOdelegationPart\DC2*\n\
      \\DC1payment_is_script\CAN\EOT \SOH(\bR\SIpaymentIsScript\DC20\n\
      \\DC4delegation_is_script\CAN\ENQ \SOH(\bR\DC2delegationIsScript"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        byronAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "byron_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"byronAddress")) ::
              Data.ProtoLens.FieldDescriptor AddressPattern
        paymentPart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_part"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentPart")) ::
              Data.ProtoLens.FieldDescriptor AddressPattern
        delegationPart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation_part"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegationPart")) ::
              Data.ProtoLens.FieldDescriptor AddressPattern
        paymentIsScript__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_is_script"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentIsScript")) ::
              Data.ProtoLens.FieldDescriptor AddressPattern
        delegationIsScript__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation_is_script"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegationIsScript")) ::
              Data.ProtoLens.FieldDescriptor AddressPattern
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, byronAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, paymentPart__field_descriptor),
           (Data.ProtoLens.Tag 3, delegationPart__field_descriptor),
           (Data.ProtoLens.Tag 4, paymentIsScript__field_descriptor),
           (Data.ProtoLens.Tag 5, delegationIsScript__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressPattern'_unknownFields
        (\ x__ y__ -> x__ {_AddressPattern'_unknownFields = y__})
  defMessage
    = AddressPattern'_constructor
        {_AddressPattern'byronAddress = Data.ProtoLens.fieldDefault,
         _AddressPattern'paymentPart = Data.ProtoLens.fieldDefault,
         _AddressPattern'delegationPart = Data.ProtoLens.fieldDefault,
         _AddressPattern'paymentIsScript = Data.ProtoLens.fieldDefault,
         _AddressPattern'delegationIsScript = Data.ProtoLens.fieldDefault,
         _AddressPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressPattern
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "byron_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"byronAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "payment_part"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"paymentPart") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "delegation_part"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegationPart") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "payment_is_script"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentIsScript") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delegation_is_script"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegationIsScript") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressPattern"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"byronAddress") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"paymentPart") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"delegationPart") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"paymentIsScript") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"delegationIsScript") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData AddressPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressPattern'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressPattern'byronAddress x__)
                (Control.DeepSeq.deepseq
                   (_AddressPattern'paymentPart x__)
                   (Control.DeepSeq.deepseq
                      (_AddressPattern'delegationPart x__)
                      (Control.DeepSeq.deepseq
                         (_AddressPattern'paymentIsScript x__)
                         (Control.DeepSeq.deepseq
                            (_AddressPattern'delegationIsScript x__) ())))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.name' @:: Lens' Asset Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.outputCoin' @:: Lens' Asset Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.mintCoin' @:: Lens' Asset Data.Int.Int64@ -}
data Asset
  = Asset'_constructor {_Asset'name :: !Data.ByteString.ByteString,
                        _Asset'outputCoin :: !Data.Word.Word64,
                        _Asset'mintCoin :: !Data.Int.Int64,
                        _Asset'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Asset where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Asset "name" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Asset'name (\ x__ y__ -> x__ {_Asset'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Asset "outputCoin" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Asset'outputCoin (\ x__ y__ -> x__ {_Asset'outputCoin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Asset "mintCoin" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Asset'mintCoin (\ x__ y__ -> x__ {_Asset'mintCoin = y__}))
        Prelude.id
instance Data.ProtoLens.Message Asset where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Asset"
  packedMessageDescriptor _
    = "\n\
      \\ENQAsset\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\fR\EOTname\DC2\US\n\
      \\voutput_coin\CAN\STX \SOH(\EOTR\n\
      \outputCoin\DC2\ESC\n\
      \\tmint_coin\CAN\ETX \SOH(\ETXR\bmintCoin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Asset
        outputCoin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "output_coin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"outputCoin")) ::
              Data.ProtoLens.FieldDescriptor Asset
        mintCoin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mint_coin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mintCoin")) ::
              Data.ProtoLens.FieldDescriptor Asset
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, outputCoin__field_descriptor),
           (Data.ProtoLens.Tag 3, mintCoin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Asset'_unknownFields
        (\ x__ y__ -> x__ {_Asset'_unknownFields = y__})
  defMessage
    = Asset'_constructor
        {_Asset'name = Data.ProtoLens.fieldDefault,
         _Asset'outputCoin = Data.ProtoLens.fieldDefault,
         _Asset'mintCoin = Data.ProtoLens.fieldDefault,
         _Asset'_unknownFields = []}
  parseMessage
    = let
        loop :: Asset -> Data.ProtoLens.Encoding.Bytes.Parser Asset
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "output_coin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"outputCoin") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mint_coin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mintCoin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Asset"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"outputCoin") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mintCoin") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Asset where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Asset'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Asset'name x__)
                (Control.DeepSeq.deepseq
                   (_Asset'outputCoin x__)
                   (Control.DeepSeq.deepseq (_Asset'mintCoin x__) ())))
{- | Fields :
      -}
data AssetPattern
  = AssetPattern'_constructor {_AssetPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AssetPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AssetPattern where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.AssetPattern"
  packedMessageDescriptor _
    = "\n\
      \\fAssetPattern"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AssetPattern'_unknownFields
        (\ x__ y__ -> x__ {_AssetPattern'_unknownFields = y__})
  defMessage
    = AssetPattern'_constructor {_AssetPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AssetPattern -> Data.ProtoLens.Encoding.Bytes.Parser AssetPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AssetPattern"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData AssetPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_AssetPattern'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.metadata' @:: Lens' AuxData [Metadata]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'metadata' @:: Lens' AuxData (Data.Vector.Vector Metadata)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scripts' @:: Lens' AuxData [Script]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'scripts' @:: Lens' AuxData (Data.Vector.Vector Script)@ -}
data AuxData
  = AuxData'_constructor {_AuxData'metadata :: !(Data.Vector.Vector Metadata),
                          _AuxData'scripts :: !(Data.Vector.Vector Script),
                          _AuxData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuxData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuxData "metadata" [Metadata] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxData'metadata (\ x__ y__ -> x__ {_AuxData'metadata = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AuxData "vec'metadata" (Data.Vector.Vector Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxData'metadata (\ x__ y__ -> x__ {_AuxData'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuxData "scripts" [Script] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxData'scripts (\ x__ y__ -> x__ {_AuxData'scripts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AuxData "vec'scripts" (Data.Vector.Vector Script) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxData'scripts (\ x__ y__ -> x__ {_AuxData'scripts = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuxData where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.AuxData"
  packedMessageDescriptor _
    = "\n\
      \\aAuxData\DC2=\n\
      \\bmetadata\CAN\SOH \ETX(\v2!.utxorpc.v1alpha.cardano.MetadataR\bmetadata\DC29\n\
      \\ascripts\CAN\STX \ETX(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ascripts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadata)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor AuxData
        scripts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scripts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Script)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"scripts")) ::
              Data.ProtoLens.FieldDescriptor AuxData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor),
           (Data.ProtoLens.Tag 2, scripts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuxData'_unknownFields
        (\ x__ y__ -> x__ {_AuxData'_unknownFields = y__})
  defMessage
    = AuxData'_constructor
        {_AuxData'metadata = Data.Vector.Generic.empty,
         _AuxData'scripts = Data.Vector.Generic.empty,
         _AuxData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuxData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Metadata
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Script
                -> Data.ProtoLens.Encoding.Bytes.Parser AuxData
        loop x mutable'metadata mutable'scripts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'metadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'metadata)
                      frozen'scripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'scripts)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'metadata") frozen'metadata
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'scripts") frozen'scripts x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "metadata"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'metadata y)
                                loop x v mutable'scripts
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "scripts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'scripts y)
                                loop x mutable'metadata v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'metadata mutable'scripts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'metadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'scripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'metadata mutable'scripts)
          "AuxData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'metadata") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'scripts") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AuxData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuxData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AuxData'metadata x__)
                (Control.DeepSeq.deepseq (_AuxData'scripts x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'bigInt' @:: Lens' BigInt (Prelude.Maybe BigInt'BigInt)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'int' @:: Lens' BigInt (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.int' @:: Lens' BigInt Data.Int.Int64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'bigUInt' @:: Lens' BigInt (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.bigUInt' @:: Lens' BigInt Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'bigNInt' @:: Lens' BigInt (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.bigNInt' @:: Lens' BigInt Data.ByteString.ByteString@ -}
data BigInt
  = BigInt'_constructor {_BigInt'bigInt :: !(Prelude.Maybe BigInt'BigInt),
                         _BigInt'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BigInt where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BigInt'BigInt
  = BigInt'Int !Data.Int.Int64 |
    BigInt'BigUInt !Data.ByteString.ByteString |
    BigInt'BigNInt !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BigInt "maybe'bigInt" (Prelude.Maybe BigInt'BigInt) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BigInt "maybe'int" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BigInt'Int x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BigInt'Int y__))
instance Data.ProtoLens.Field.HasField BigInt "int" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BigInt'Int x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BigInt'Int y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BigInt "maybe'bigUInt" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BigInt'BigUInt x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BigInt'BigUInt y__))
instance Data.ProtoLens.Field.HasField BigInt "bigUInt" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BigInt'BigUInt x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BigInt'BigUInt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BigInt "maybe'bigNInt" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BigInt'BigNInt x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BigInt'BigNInt y__))
instance Data.ProtoLens.Field.HasField BigInt "bigNInt" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BigInt'bigInt (\ x__ y__ -> x__ {_BigInt'bigInt = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BigInt'BigNInt x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BigInt'BigNInt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BigInt where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.BigInt"
  packedMessageDescriptor _
    = "\n\
      \\ACKBigInt\DC2\DC2\n\
      \\ETXint\CAN\SOH \SOH(\ETXH\NULR\ETXint\DC2\FS\n\
      \\tbig_u_int\CAN\STX \SOH(\fH\NULR\abigUInt\DC2\FS\n\
      \\tbig_n_int\CAN\ETX \SOH(\fH\NULR\abigNIntB\t\n\
      \\abig_int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        int__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int")) ::
              Data.ProtoLens.FieldDescriptor BigInt
        bigUInt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "big_u_int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bigUInt")) ::
              Data.ProtoLens.FieldDescriptor BigInt
        bigNInt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "big_n_int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bigNInt")) ::
              Data.ProtoLens.FieldDescriptor BigInt
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, int__field_descriptor),
           (Data.ProtoLens.Tag 2, bigUInt__field_descriptor),
           (Data.ProtoLens.Tag 3, bigNInt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BigInt'_unknownFields
        (\ x__ y__ -> x__ {_BigInt'_unknownFields = y__})
  defMessage
    = BigInt'_constructor
        {_BigInt'bigInt = Prelude.Nothing, _BigInt'_unknownFields = []}
  parseMessage
    = let
        loop :: BigInt -> Data.ProtoLens.Encoding.Bytes.Parser BigInt
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "big_u_int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bigUInt") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "big_n_int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bigNInt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BigInt"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bigInt") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (BigInt'Int v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (BigInt'BigUInt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (BigInt'BigNInt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BigInt where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BigInt'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BigInt'bigInt x__) ())
instance Control.DeepSeq.NFData BigInt'BigInt where
  rnf (BigInt'Int x__) = Control.DeepSeq.rnf x__
  rnf (BigInt'BigUInt x__) = Control.DeepSeq.rnf x__
  rnf (BigInt'BigNInt x__) = Control.DeepSeq.rnf x__
_BigInt'Int ::
  Data.ProtoLens.Prism.Prism' BigInt'BigInt Data.Int.Int64
_BigInt'Int
  = Data.ProtoLens.Prism.prism'
      BigInt'Int
      (\ p__
         -> case p__ of
              (BigInt'Int p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BigInt'BigUInt ::
  Data.ProtoLens.Prism.Prism' BigInt'BigInt Data.ByteString.ByteString
_BigInt'BigUInt
  = Data.ProtoLens.Prism.prism'
      BigInt'BigUInt
      (\ p__
         -> case p__ of
              (BigInt'BigUInt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BigInt'BigNInt ::
  Data.ProtoLens.Prism.Prism' BigInt'BigInt Data.ByteString.ByteString
_BigInt'BigNInt
  = Data.ProtoLens.Prism.prism'
      BigInt'BigNInt
      (\ p__
         -> case p__ of
              (BigInt'BigNInt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.header' @:: Lens' Block BlockHeader@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'header' @:: Lens' Block (Prelude.Maybe BlockHeader)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.body' @:: Lens' Block BlockBody@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'body' @:: Lens' Block (Prelude.Maybe BlockBody)@ -}
data Block
  = Block'_constructor {_Block'header :: !(Prelude.Maybe BlockHeader),
                        _Block'body :: !(Prelude.Maybe BlockBody),
                        _Block'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Block where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Block "header" BlockHeader where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'header (\ x__ y__ -> x__ {_Block'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'header" (Prelude.Maybe BlockHeader) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'header (\ x__ y__ -> x__ {_Block'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Block "body" BlockBody where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'body (\ x__ y__ -> x__ {_Block'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'body" (Prelude.Maybe BlockBody) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'body (\ x__ y__ -> x__ {_Block'body = y__}))
        Prelude.id
instance Data.ProtoLens.Message Block where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Block"
  packedMessageDescriptor _
    = "\n\
      \\ENQBlock\DC2<\n\
      \\ACKheader\CAN\SOH \SOH(\v2$.utxorpc.v1alpha.cardano.BlockHeaderR\ACKheader\DC26\n\
      \\EOTbody\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.BlockBodyR\EOTbody"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockHeader)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor Block
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockBody)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor Block
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, body__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Block'_unknownFields
        (\ x__ y__ -> x__ {_Block'_unknownFields = y__})
  defMessage
    = Block'_constructor
        {_Block'header = Prelude.Nothing, _Block'body = Prelude.Nothing,
         _Block'_unknownFields = []}
  parseMessage
    = let
        loop :: Block -> Data.ProtoLens.Encoding.Bytes.Parser Block
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Block"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Block where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Block'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Block'header x__) (Control.DeepSeq.deepseq (_Block'body x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.tx' @:: Lens' BlockBody [Tx]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'tx' @:: Lens' BlockBody (Data.Vector.Vector Tx)@ -}
data BlockBody
  = BlockBody'_constructor {_BlockBody'tx :: !(Data.Vector.Vector Tx),
                            _BlockBody'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBody where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBody "tx" [Tx] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBody'tx (\ x__ y__ -> x__ {_BlockBody'tx = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BlockBody "vec'tx" (Data.Vector.Vector Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBody'tx (\ x__ y__ -> x__ {_BlockBody'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBody where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.BlockBody"
  packedMessageDescriptor _
    = "\n\
      \\tBlockBody\DC2+\n\
      \\STXtx\CAN\SOH \ETX(\v2\ESC.utxorpc.v1alpha.cardano.TxR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Tx)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"tx")) ::
              Data.ProtoLens.FieldDescriptor BlockBody
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBody'_unknownFields
        (\ x__ y__ -> x__ {_BlockBody'_unknownFields = y__})
  defMessage
    = BlockBody'_constructor
        {_BlockBody'tx = Data.Vector.Generic.empty,
         _BlockBody'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBody
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Tx
             -> Data.ProtoLens.Encoding.Bytes.Parser BlockBody
        loop x mutable'tx
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'tx <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'tx)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'tx") frozen'tx x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tx"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'tx y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'tx
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'tx <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'tx)
          "BlockBody"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tx") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BlockBody where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBody'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BlockBody'tx x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.slot' @:: Lens' BlockHeader Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.hash' @:: Lens' BlockHeader Data.ByteString.ByteString@ -}
data BlockHeader
  = BlockHeader'_constructor {_BlockHeader'slot :: !Data.Word.Word64,
                              _BlockHeader'hash :: !Data.ByteString.ByteString,
                              _BlockHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockHeader where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockHeader "slot" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockHeader'slot (\ x__ y__ -> x__ {_BlockHeader'slot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockHeader "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockHeader'hash (\ x__ y__ -> x__ {_BlockHeader'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockHeader where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.BlockHeader"
  packedMessageDescriptor _
    = "\n\
      \\vBlockHeader\DC2\DC2\n\
      \\EOTslot\CAN\SOH \SOH(\EOTR\EOTslot\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        slot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"slot")) ::
              Data.ProtoLens.FieldDescriptor BlockHeader
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor BlockHeader
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, slot__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockHeader'_unknownFields
        (\ x__ y__ -> x__ {_BlockHeader'_unknownFields = y__})
  defMessage
    = BlockHeader'_constructor
        {_BlockHeader'slot = Data.ProtoLens.fieldDefault,
         _BlockHeader'hash = Data.ProtoLens.fieldDefault,
         _BlockHeader'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockHeader -> Data.ProtoLens.Encoding.Bytes.Parser BlockHeader
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "slot"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"slot") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockHeader"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"slot") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BlockHeader where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockHeader'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockHeader'slot x__)
                (Control.DeepSeq.deepseq (_BlockHeader'hash x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'certificate' @:: Lens' Certificate (Prelude.Maybe Certificate'Certificate)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeRegistration' @:: Lens' Certificate (Prelude.Maybe StakeCredential)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.stakeRegistration' @:: Lens' Certificate StakeCredential@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeDeregistration' @:: Lens' Certificate (Prelude.Maybe StakeCredential)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.stakeDeregistration' @:: Lens' Certificate StakeCredential@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeDelegation' @:: Lens' Certificate (Prelude.Maybe StakeDelegationCert)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.stakeDelegation' @:: Lens' Certificate StakeDelegationCert@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'poolRegistration' @:: Lens' Certificate (Prelude.Maybe PoolRegistrationCert)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolRegistration' @:: Lens' Certificate PoolRegistrationCert@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'poolRetirement' @:: Lens' Certificate (Prelude.Maybe PoolRetirementCert)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolRetirement' @:: Lens' Certificate PoolRetirementCert@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'genesisKeyDelegation' @:: Lens' Certificate (Prelude.Maybe GenesisKeyDelegationCert)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.genesisKeyDelegation' @:: Lens' Certificate GenesisKeyDelegationCert@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'mirCert' @:: Lens' Certificate (Prelude.Maybe MirCert)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.mirCert' @:: Lens' Certificate MirCert@ -}
data Certificate
  = Certificate'_constructor {_Certificate'certificate :: !(Prelude.Maybe Certificate'Certificate),
                              _Certificate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Certificate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Certificate'Certificate
  = Certificate'StakeRegistration !StakeCredential |
    Certificate'StakeDeregistration !StakeCredential |
    Certificate'StakeDelegation !StakeDelegationCert |
    Certificate'PoolRegistration !PoolRegistrationCert |
    Certificate'PoolRetirement !PoolRetirementCert |
    Certificate'GenesisKeyDelegation !GenesisKeyDelegationCert |
    Certificate'MirCert !MirCert
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Certificate "maybe'certificate" (Prelude.Maybe Certificate'Certificate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Certificate "maybe'stakeRegistration" (Prelude.Maybe StakeCredential) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'StakeRegistration x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'StakeRegistration y__))
instance Data.ProtoLens.Field.HasField Certificate "stakeRegistration" StakeCredential where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'StakeRegistration x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'StakeRegistration y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'stakeDeregistration" (Prelude.Maybe StakeCredential) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'StakeDeregistration x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'StakeDeregistration y__))
instance Data.ProtoLens.Field.HasField Certificate "stakeDeregistration" StakeCredential where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'StakeDeregistration x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'StakeDeregistration y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'stakeDelegation" (Prelude.Maybe StakeDelegationCert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'StakeDelegation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'StakeDelegation y__))
instance Data.ProtoLens.Field.HasField Certificate "stakeDelegation" StakeDelegationCert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'StakeDelegation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'StakeDelegation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'poolRegistration" (Prelude.Maybe PoolRegistrationCert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'PoolRegistration x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'PoolRegistration y__))
instance Data.ProtoLens.Field.HasField Certificate "poolRegistration" PoolRegistrationCert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'PoolRegistration x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'PoolRegistration y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'poolRetirement" (Prelude.Maybe PoolRetirementCert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'PoolRetirement x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'PoolRetirement y__))
instance Data.ProtoLens.Field.HasField Certificate "poolRetirement" PoolRetirementCert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'PoolRetirement x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'PoolRetirement y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'genesisKeyDelegation" (Prelude.Maybe GenesisKeyDelegationCert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'GenesisKeyDelegation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'GenesisKeyDelegation y__))
instance Data.ProtoLens.Field.HasField Certificate "genesisKeyDelegation" GenesisKeyDelegationCert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'GenesisKeyDelegation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'GenesisKeyDelegation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Certificate "maybe'mirCert" (Prelude.Maybe MirCert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Certificate'MirCert x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Certificate'MirCert y__))
instance Data.ProtoLens.Field.HasField Certificate "mirCert" MirCert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Certificate'certificate
           (\ x__ y__ -> x__ {_Certificate'certificate = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Certificate'MirCert x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Certificate'MirCert y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Certificate where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.Certificate"
  packedMessageDescriptor _
    = "\n\
      \\vCertificate\DC2Y\n\
      \\DC2stake_registration\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialH\NULR\DC1stakeRegistration\DC2]\n\
      \\DC4stake_deregistration\CAN\STX \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialH\NULR\DC3stakeDeregistration\DC2Y\n\
      \\DLEstake_delegation\CAN\ETX \SOH(\v2,.utxorpc.v1alpha.cardano.StakeDelegationCertH\NULR\SIstakeDelegation\DC2\\\n\
      \\DC1pool_registration\CAN\EOT \SOH(\v2-.utxorpc.v1alpha.cardano.PoolRegistrationCertH\NULR\DLEpoolRegistration\DC2V\n\
      \\SIpool_retirement\CAN\ENQ \SOH(\v2+.utxorpc.v1alpha.cardano.PoolRetirementCertH\NULR\SOpoolRetirement\DC2i\n\
      \\SYNgenesis_key_delegation\CAN\ACK \SOH(\v21.utxorpc.v1alpha.cardano.GenesisKeyDelegationCertH\NULR\DC4genesisKeyDelegation\DC2=\n\
      \\bmir_cert\CAN\a \SOH(\v2 .utxorpc.v1alpha.cardano.MirCertH\NULR\amirCertB\r\n\
      \\vcertificate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stakeRegistration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake_registration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeCredential)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stakeRegistration")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        stakeDeregistration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake_deregistration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeCredential)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stakeDeregistration")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        stakeDelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake_delegation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeDelegationCert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stakeDelegation")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        poolRegistration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_registration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PoolRegistrationCert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'poolRegistration")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        poolRetirement__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_retirement"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PoolRetirementCert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'poolRetirement")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        genesisKeyDelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "genesis_key_delegation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GenesisKeyDelegationCert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'genesisKeyDelegation")) ::
              Data.ProtoLens.FieldDescriptor Certificate
        mirCert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mir_cert"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MirCert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mirCert")) ::
              Data.ProtoLens.FieldDescriptor Certificate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stakeRegistration__field_descriptor),
           (Data.ProtoLens.Tag 2, stakeDeregistration__field_descriptor),
           (Data.ProtoLens.Tag 3, stakeDelegation__field_descriptor),
           (Data.ProtoLens.Tag 4, poolRegistration__field_descriptor),
           (Data.ProtoLens.Tag 5, poolRetirement__field_descriptor),
           (Data.ProtoLens.Tag 6, genesisKeyDelegation__field_descriptor),
           (Data.ProtoLens.Tag 7, mirCert__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Certificate'_unknownFields
        (\ x__ y__ -> x__ {_Certificate'_unknownFields = y__})
  defMessage
    = Certificate'_constructor
        {_Certificate'certificate = Prelude.Nothing,
         _Certificate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Certificate -> Data.ProtoLens.Encoding.Bytes.Parser Certificate
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stake_registration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stakeRegistration") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stake_deregistration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stakeDeregistration") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stake_delegation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stakeDelegation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pool_registration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"poolRegistration") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pool_retirement"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"poolRetirement") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "genesis_key_delegation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"genesisKeyDelegation") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "mir_cert"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mirCert") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Certificate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'certificate") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Certificate'StakeRegistration v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'StakeDeregistration v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'StakeDelegation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'PoolRegistration v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'PoolRetirement v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'GenesisKeyDelegation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Certificate'MirCert v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Certificate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Certificate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Certificate'certificate x__) ())
instance Control.DeepSeq.NFData Certificate'Certificate where
  rnf (Certificate'StakeRegistration x__) = Control.DeepSeq.rnf x__
  rnf (Certificate'StakeDeregistration x__) = Control.DeepSeq.rnf x__
  rnf (Certificate'StakeDelegation x__) = Control.DeepSeq.rnf x__
  rnf (Certificate'PoolRegistration x__) = Control.DeepSeq.rnf x__
  rnf (Certificate'PoolRetirement x__) = Control.DeepSeq.rnf x__
  rnf (Certificate'GenesisKeyDelegation x__)
    = Control.DeepSeq.rnf x__
  rnf (Certificate'MirCert x__) = Control.DeepSeq.rnf x__
_Certificate'StakeRegistration ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate StakeCredential
_Certificate'StakeRegistration
  = Data.ProtoLens.Prism.prism'
      Certificate'StakeRegistration
      (\ p__
         -> case p__ of
              (Certificate'StakeRegistration p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'StakeDeregistration ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate StakeCredential
_Certificate'StakeDeregistration
  = Data.ProtoLens.Prism.prism'
      Certificate'StakeDeregistration
      (\ p__
         -> case p__ of
              (Certificate'StakeDeregistration p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'StakeDelegation ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate StakeDelegationCert
_Certificate'StakeDelegation
  = Data.ProtoLens.Prism.prism'
      Certificate'StakeDelegation
      (\ p__
         -> case p__ of
              (Certificate'StakeDelegation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'PoolRegistration ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate PoolRegistrationCert
_Certificate'PoolRegistration
  = Data.ProtoLens.Prism.prism'
      Certificate'PoolRegistration
      (\ p__
         -> case p__ of
              (Certificate'PoolRegistration p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'PoolRetirement ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate PoolRetirementCert
_Certificate'PoolRetirement
  = Data.ProtoLens.Prism.prism'
      Certificate'PoolRetirement
      (\ p__
         -> case p__ of
              (Certificate'PoolRetirement p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'GenesisKeyDelegation ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate GenesisKeyDelegationCert
_Certificate'GenesisKeyDelegation
  = Data.ProtoLens.Prism.prism'
      Certificate'GenesisKeyDelegation
      (\ p__
         -> case p__ of
              (Certificate'GenesisKeyDelegation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Certificate'MirCert ::
  Data.ProtoLens.Prism.Prism' Certificate'Certificate MirCert
_Certificate'MirCert
  = Data.ProtoLens.Prism.prism'
      Certificate'MirCert
      (\ p__
         -> case p__ of
              (Certificate'MirCert p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.collateral' @:: Lens' Collateral [TxInput]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'collateral' @:: Lens' Collateral (Data.Vector.Vector TxInput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.collateralReturn' @:: Lens' Collateral TxOutput@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'collateralReturn' @:: Lens' Collateral (Prelude.Maybe TxOutput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.totalCollateral' @:: Lens' Collateral Data.Word.Word64@ -}
data Collateral
  = Collateral'_constructor {_Collateral'collateral :: !(Data.Vector.Vector TxInput),
                             _Collateral'collateralReturn :: !(Prelude.Maybe TxOutput),
                             _Collateral'totalCollateral :: !Data.Word.Word64,
                             _Collateral'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Collateral where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Collateral "collateral" [TxInput] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Collateral'collateral
           (\ x__ y__ -> x__ {_Collateral'collateral = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Collateral "vec'collateral" (Data.Vector.Vector TxInput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Collateral'collateral
           (\ x__ y__ -> x__ {_Collateral'collateral = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Collateral "collateralReturn" TxOutput where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Collateral'collateralReturn
           (\ x__ y__ -> x__ {_Collateral'collateralReturn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Collateral "maybe'collateralReturn" (Prelude.Maybe TxOutput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Collateral'collateralReturn
           (\ x__ y__ -> x__ {_Collateral'collateralReturn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Collateral "totalCollateral" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Collateral'totalCollateral
           (\ x__ y__ -> x__ {_Collateral'totalCollateral = y__}))
        Prelude.id
instance Data.ProtoLens.Message Collateral where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Collateral"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Collateral\DC2@\n\
      \\n\
      \collateral\CAN\SOH \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\n\
      \collateral\DC2N\n\
      \\DC1collateral_return\CAN\STX \SOH(\v2!.utxorpc.v1alpha.cardano.TxOutputR\DLEcollateralReturn\DC2)\n\
      \\DLEtotal_collateral\CAN\ETX \SOH(\EOTR\SItotalCollateral"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        collateral__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collateral"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxInput)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"collateral")) ::
              Data.ProtoLens.FieldDescriptor Collateral
        collateralReturn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collateral_return"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxOutput)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'collateralReturn")) ::
              Data.ProtoLens.FieldDescriptor Collateral
        totalCollateral__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_collateral"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalCollateral")) ::
              Data.ProtoLens.FieldDescriptor Collateral
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, collateral__field_descriptor),
           (Data.ProtoLens.Tag 2, collateralReturn__field_descriptor),
           (Data.ProtoLens.Tag 3, totalCollateral__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Collateral'_unknownFields
        (\ x__ y__ -> x__ {_Collateral'_unknownFields = y__})
  defMessage
    = Collateral'_constructor
        {_Collateral'collateral = Data.Vector.Generic.empty,
         _Collateral'collateralReturn = Prelude.Nothing,
         _Collateral'totalCollateral = Data.ProtoLens.fieldDefault,
         _Collateral'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Collateral
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxInput
             -> Data.ProtoLens.Encoding.Bytes.Parser Collateral
        loop x mutable'collateral
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'collateral <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'collateral)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'collateral") frozen'collateral
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "collateral"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'collateral y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "collateral_return"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collateralReturn") y x)
                                  mutable'collateral
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_collateral"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalCollateral") y x)
                                  mutable'collateral
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'collateral
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'collateral <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'collateral)
          "Collateral"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'collateral") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'collateralReturn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"totalCollateral") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Collateral where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Collateral'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Collateral'collateral x__)
                (Control.DeepSeq.deepseq
                   (_Collateral'collateralReturn x__)
                   (Control.DeepSeq.deepseq (_Collateral'totalCollateral x__) ())))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.tag' @:: Lens' Constr Data.Word.Word32@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.anyConstructor' @:: Lens' Constr Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.fields' @:: Lens' Constr [PlutusData]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'fields' @:: Lens' Constr (Data.Vector.Vector PlutusData)@ -}
data Constr
  = Constr'_constructor {_Constr'tag :: !Data.Word.Word32,
                         _Constr'anyConstructor :: !Data.Word.Word64,
                         _Constr'fields :: !(Data.Vector.Vector PlutusData),
                         _Constr'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Constr where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Constr "tag" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constr'tag (\ x__ y__ -> x__ {_Constr'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Constr "anyConstructor" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constr'anyConstructor
           (\ x__ y__ -> x__ {_Constr'anyConstructor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Constr "fields" [PlutusData] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constr'fields (\ x__ y__ -> x__ {_Constr'fields = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Constr "vec'fields" (Data.Vector.Vector PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constr'fields (\ x__ y__ -> x__ {_Constr'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Message Constr where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Constr"
  packedMessageDescriptor _
    = "\n\
      \\ACKConstr\DC2\DLE\n\
      \\ETXtag\CAN\SOH \SOH(\rR\ETXtag\DC2'\n\
      \\SIany_constructor\CAN\STX \SOH(\EOTR\SOanyConstructor\DC2;\n\
      \\ACKfields\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ACKfields"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tag")) ::
              Data.ProtoLens.FieldDescriptor Constr
        anyConstructor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_constructor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"anyConstructor")) ::
              Data.ProtoLens.FieldDescriptor Constr
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor Constr
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tag__field_descriptor),
           (Data.ProtoLens.Tag 2, anyConstructor__field_descriptor),
           (Data.ProtoLens.Tag 3, fields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Constr'_unknownFields
        (\ x__ y__ -> x__ {_Constr'_unknownFields = y__})
  defMessage
    = Constr'_constructor
        {_Constr'tag = Data.ProtoLens.fieldDefault,
         _Constr'anyConstructor = Data.ProtoLens.fieldDefault,
         _Constr'fields = Data.Vector.Generic.empty,
         _Constr'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Constr
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PlutusData
             -> Data.ProtoLens.Encoding.Bytes.Parser Constr
        loop x mutable'fields
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fields <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'fields)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'fields") frozen'fields x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                                  mutable'fields
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "any_constructor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"anyConstructor") y x)
                                  mutable'fields
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "fields"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fields y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fields
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fields <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fields)
          "Constr"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tag") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"anyConstructor") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'fields") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Constr where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Constr'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Constr'tag x__)
                (Control.DeepSeq.deepseq
                   (_Constr'anyConstructor x__)
                   (Control.DeepSeq.deepseq (_Constr'fields x__) ())))
{- | Fields :
      -}
data DatumPattern
  = DatumPattern'_constructor {_DatumPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DatumPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message DatumPattern where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.DatumPattern"
  packedMessageDescriptor _
    = "\n\
      \\fDatumPattern"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DatumPattern'_unknownFields
        (\ x__ y__ -> x__ {_DatumPattern'_unknownFields = y__})
  defMessage
    = DatumPattern'_constructor {_DatumPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DatumPattern -> Data.ProtoLens.Encoding.Bytes.Parser DatumPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DatumPattern"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData DatumPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_DatumPattern'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.genesisHash' @:: Lens' GenesisKeyDelegationCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.genesisDelegateHash' @:: Lens' GenesisKeyDelegationCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vrfKeyhash' @:: Lens' GenesisKeyDelegationCert Data.ByteString.ByteString@ -}
data GenesisKeyDelegationCert
  = GenesisKeyDelegationCert'_constructor {_GenesisKeyDelegationCert'genesisHash :: !Data.ByteString.ByteString,
                                           _GenesisKeyDelegationCert'genesisDelegateHash :: !Data.ByteString.ByteString,
                                           _GenesisKeyDelegationCert'vrfKeyhash :: !Data.ByteString.ByteString,
                                           _GenesisKeyDelegationCert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisKeyDelegationCert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisKeyDelegationCert "genesisHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisKeyDelegationCert'genesisHash
           (\ x__ y__ -> x__ {_GenesisKeyDelegationCert'genesisHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisKeyDelegationCert "genesisDelegateHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisKeyDelegationCert'genesisDelegateHash
           (\ x__ y__
              -> x__ {_GenesisKeyDelegationCert'genesisDelegateHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisKeyDelegationCert "vrfKeyhash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisKeyDelegationCert'vrfKeyhash
           (\ x__ y__ -> x__ {_GenesisKeyDelegationCert'vrfKeyhash = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisKeyDelegationCert where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.GenesisKeyDelegationCert"
  packedMessageDescriptor _
    = "\n\
      \\CANGenesisKeyDelegationCert\DC2!\n\
      \\fgenesis_hash\CAN\SOH \SOH(\fR\vgenesisHash\DC22\n\
      \\NAKgenesis_delegate_hash\CAN\STX \SOH(\fR\DC3genesisDelegateHash\DC2\US\n\
      \\vvrf_keyhash\CAN\ETX \SOH(\fR\n\
      \vrfKeyhash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        genesisHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "genesis_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"genesisHash")) ::
              Data.ProtoLens.FieldDescriptor GenesisKeyDelegationCert
        genesisDelegateHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "genesis_delegate_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"genesisDelegateHash")) ::
              Data.ProtoLens.FieldDescriptor GenesisKeyDelegationCert
        vrfKeyhash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vrf_keyhash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"vrfKeyhash")) ::
              Data.ProtoLens.FieldDescriptor GenesisKeyDelegationCert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, genesisHash__field_descriptor),
           (Data.ProtoLens.Tag 2, genesisDelegateHash__field_descriptor),
           (Data.ProtoLens.Tag 3, vrfKeyhash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisKeyDelegationCert'_unknownFields
        (\ x__ y__ -> x__ {_GenesisKeyDelegationCert'_unknownFields = y__})
  defMessage
    = GenesisKeyDelegationCert'_constructor
        {_GenesisKeyDelegationCert'genesisHash = Data.ProtoLens.fieldDefault,
         _GenesisKeyDelegationCert'genesisDelegateHash = Data.ProtoLens.fieldDefault,
         _GenesisKeyDelegationCert'vrfKeyhash = Data.ProtoLens.fieldDefault,
         _GenesisKeyDelegationCert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisKeyDelegationCert
          -> Data.ProtoLens.Encoding.Bytes.Parser GenesisKeyDelegationCert
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "genesis_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"genesisHash") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "genesis_delegate_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"genesisDelegateHash") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vrf_keyhash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vrfKeyhash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenesisKeyDelegationCert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"genesisHash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"genesisDelegateHash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"vrfKeyhash") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GenesisKeyDelegationCert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisKeyDelegationCert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisKeyDelegationCert'genesisHash x__)
                (Control.DeepSeq.deepseq
                   (_GenesisKeyDelegationCert'genesisDelegateHash x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisKeyDelegationCert'vrfKeyhash x__) ())))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.label' @:: Lens' Metadata Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.value' @:: Lens' Metadata Metadatum@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'value' @:: Lens' Metadata (Prelude.Maybe Metadatum)@ -}
data Metadata
  = Metadata'_constructor {_Metadata'label :: !Data.Word.Word64,
                           _Metadata'value :: !(Prelude.Maybe Metadatum),
                           _Metadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata "label" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'label (\ x__ y__ -> x__ {_Metadata'label = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "value" Metadatum where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'value (\ x__ y__ -> x__ {_Metadata'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Metadata "maybe'value" (Prelude.Maybe Metadatum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'value (\ x__ y__ -> x__ {_Metadata'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Metadata"
  packedMessageDescriptor _
    = "\n\
      \\bMetadata\DC2\DC4\n\
      \\ENQlabel\CAN\SOH \SOH(\EOTR\ENQlabel\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"label")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadatum)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Metadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, label__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'_unknownFields
        (\ x__ y__ -> x__ {_Metadata'_unknownFields = y__})
  defMessage
    = Metadata'_constructor
        {_Metadata'label = Data.ProtoLens.fieldDefault,
         _Metadata'value = Prelude.Nothing, _Metadata'_unknownFields = []}
  parseMessage
    = let
        loop :: Metadata -> Data.ProtoLens.Encoding.Bytes.Parser Metadata
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "label"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"label") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Metadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"label") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Metadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metadata'label x__)
                (Control.DeepSeq.deepseq (_Metadata'value x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'metadatum' @:: Lens' Metadatum (Prelude.Maybe Metadatum'Metadatum)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'int' @:: Lens' Metadatum (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.int' @:: Lens' Metadatum Data.Int.Int64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'bytes' @:: Lens' Metadatum (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.bytes' @:: Lens' Metadatum Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'text' @:: Lens' Metadatum (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.text' @:: Lens' Metadatum Data.Text.Text@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'array' @:: Lens' Metadatum (Prelude.Maybe MetadatumArray)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.array' @:: Lens' Metadatum MetadatumArray@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'map' @:: Lens' Metadatum (Prelude.Maybe MetadatumMap)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.map' @:: Lens' Metadatum MetadatumMap@ -}
data Metadatum
  = Metadatum'_constructor {_Metadatum'metadatum :: !(Prelude.Maybe Metadatum'Metadatum),
                            _Metadatum'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadatum where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Metadatum'Metadatum
  = Metadatum'Int !Data.Int.Int64 |
    Metadatum'Bytes !Data.ByteString.ByteString |
    Metadatum'Text !Data.Text.Text |
    Metadatum'Array !MetadatumArray |
    Metadatum'Map !MetadatumMap
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Metadatum "maybe'metadatum" (Prelude.Maybe Metadatum'Metadatum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadatum "maybe'int" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Metadatum'Int x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Metadatum'Int y__))
instance Data.ProtoLens.Field.HasField Metadatum "int" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Metadatum'Int x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Metadatum'Int y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Metadatum "maybe'bytes" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Metadatum'Bytes x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Metadatum'Bytes y__))
instance Data.ProtoLens.Field.HasField Metadatum "bytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Metadatum'Bytes x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Metadatum'Bytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Metadatum "maybe'text" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Metadatum'Text x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Metadatum'Text y__))
instance Data.ProtoLens.Field.HasField Metadatum "text" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Metadatum'Text x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Metadatum'Text y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Metadatum "maybe'array" (Prelude.Maybe MetadatumArray) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Metadatum'Array x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Metadatum'Array y__))
instance Data.ProtoLens.Field.HasField Metadatum "array" MetadatumArray where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Metadatum'Array x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Metadatum'Array y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Metadatum "maybe'map" (Prelude.Maybe MetadatumMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Metadatum'Map x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Metadatum'Map y__))
instance Data.ProtoLens.Field.HasField Metadatum "map" MetadatumMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadatum'metadatum
           (\ x__ y__ -> x__ {_Metadatum'metadatum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Metadatum'Map x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Metadatum'Map y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Metadatum where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Metadatum"
  packedMessageDescriptor _
    = "\n\
      \\tMetadatum\DC2\DC2\n\
      \\ETXint\CAN\SOH \SOH(\ETXH\NULR\ETXint\DC2\SYN\n\
      \\ENQbytes\CAN\STX \SOH(\fH\NULR\ENQbytes\DC2\DC4\n\
      \\EOTtext\CAN\ETX \SOH(\tH\NULR\EOTtext\DC2?\n\
      \\ENQarray\CAN\EOT \SOH(\v2'.utxorpc.v1alpha.cardano.MetadatumArrayH\NULR\ENQarray\DC29\n\
      \\ETXmap\CAN\ENQ \SOH(\v2%.utxorpc.v1alpha.cardano.MetadatumMapH\NULR\ETXmapB\v\n\
      \\tmetadatum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        int__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int")) ::
              Data.ProtoLens.FieldDescriptor Metadatum
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor Metadatum
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'text")) ::
              Data.ProtoLens.FieldDescriptor Metadatum
        array__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "array"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadatumArray)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'array")) ::
              Data.ProtoLens.FieldDescriptor Metadatum
        map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadatumMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'map")) ::
              Data.ProtoLens.FieldDescriptor Metadatum
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, int__field_descriptor),
           (Data.ProtoLens.Tag 2, bytes__field_descriptor),
           (Data.ProtoLens.Tag 3, text__field_descriptor),
           (Data.ProtoLens.Tag 4, array__field_descriptor),
           (Data.ProtoLens.Tag 5, map__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadatum'_unknownFields
        (\ x__ y__ -> x__ {_Metadatum'_unknownFields = y__})
  defMessage
    = Metadatum'_constructor
        {_Metadatum'metadatum = Prelude.Nothing,
         _Metadatum'_unknownFields = []}
  parseMessage
    = let
        loop :: Metadatum -> Data.ProtoLens.Encoding.Bytes.Parser Metadatum
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "text"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "array"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"array") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"map") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Metadatum"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'metadatum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Metadatum'Int v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (Metadatum'Bytes v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (Metadatum'Text v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (Metadatum'Array v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Metadatum'Map v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Metadatum where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadatum'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Metadatum'metadatum x__) ())
instance Control.DeepSeq.NFData Metadatum'Metadatum where
  rnf (Metadatum'Int x__) = Control.DeepSeq.rnf x__
  rnf (Metadatum'Bytes x__) = Control.DeepSeq.rnf x__
  rnf (Metadatum'Text x__) = Control.DeepSeq.rnf x__
  rnf (Metadatum'Array x__) = Control.DeepSeq.rnf x__
  rnf (Metadatum'Map x__) = Control.DeepSeq.rnf x__
_Metadatum'Int ::
  Data.ProtoLens.Prism.Prism' Metadatum'Metadatum Data.Int.Int64
_Metadatum'Int
  = Data.ProtoLens.Prism.prism'
      Metadatum'Int
      (\ p__
         -> case p__ of
              (Metadatum'Int p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Metadatum'Bytes ::
  Data.ProtoLens.Prism.Prism' Metadatum'Metadatum Data.ByteString.ByteString
_Metadatum'Bytes
  = Data.ProtoLens.Prism.prism'
      Metadatum'Bytes
      (\ p__
         -> case p__ of
              (Metadatum'Bytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Metadatum'Text ::
  Data.ProtoLens.Prism.Prism' Metadatum'Metadatum Data.Text.Text
_Metadatum'Text
  = Data.ProtoLens.Prism.prism'
      Metadatum'Text
      (\ p__
         -> case p__ of
              (Metadatum'Text p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Metadatum'Array ::
  Data.ProtoLens.Prism.Prism' Metadatum'Metadatum MetadatumArray
_Metadatum'Array
  = Data.ProtoLens.Prism.prism'
      Metadatum'Array
      (\ p__
         -> case p__ of
              (Metadatum'Array p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Metadatum'Map ::
  Data.ProtoLens.Prism.Prism' Metadatum'Metadatum MetadatumMap
_Metadatum'Map
  = Data.ProtoLens.Prism.prism'
      Metadatum'Map
      (\ p__
         -> case p__ of
              (Metadatum'Map p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.items' @:: Lens' MetadatumArray [Metadatum]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'items' @:: Lens' MetadatumArray (Data.Vector.Vector Metadatum)@ -}
data MetadatumArray
  = MetadatumArray'_constructor {_MetadatumArray'items :: !(Data.Vector.Vector Metadatum),
                                 _MetadatumArray'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadatumArray where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadatumArray "items" [Metadatum] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumArray'items
           (\ x__ y__ -> x__ {_MetadatumArray'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MetadatumArray "vec'items" (Data.Vector.Vector Metadatum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumArray'items
           (\ x__ y__ -> x__ {_MetadatumArray'items = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadatumArray where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.MetadatumArray"
  packedMessageDescriptor _
    = "\n\
      \\SOMetadatumArray\DC28\n\
      \\ENQitems\CAN\SOH \ETX(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQitems"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadatum)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor MetadatumArray
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, items__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadatumArray'_unknownFields
        (\ x__ y__ -> x__ {_MetadatumArray'_unknownFields = y__})
  defMessage
    = MetadatumArray'_constructor
        {_MetadatumArray'items = Data.Vector.Generic.empty,
         _MetadatumArray'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadatumArray
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Metadatum
             -> Data.ProtoLens.Encoding.Bytes.Parser MetadatumArray
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "MetadatumArray"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MetadatumArray where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadatumArray'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MetadatumArray'items x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.pairs' @:: Lens' MetadatumMap [MetadatumPair]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'pairs' @:: Lens' MetadatumMap (Data.Vector.Vector MetadatumPair)@ -}
data MetadatumMap
  = MetadatumMap'_constructor {_MetadatumMap'pairs :: !(Data.Vector.Vector MetadatumPair),
                               _MetadatumMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadatumMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadatumMap "pairs" [MetadatumPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumMap'pairs (\ x__ y__ -> x__ {_MetadatumMap'pairs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MetadatumMap "vec'pairs" (Data.Vector.Vector MetadatumPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumMap'pairs (\ x__ y__ -> x__ {_MetadatumMap'pairs = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadatumMap where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.MetadatumMap"
  packedMessageDescriptor _
    = "\n\
      \\fMetadatumMap\DC2<\n\
      \\ENQpairs\CAN\SOH \ETX(\v2&.utxorpc.v1alpha.cardano.MetadatumPairR\ENQpairs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pairs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pairs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadatumPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"pairs")) ::
              Data.ProtoLens.FieldDescriptor MetadatumMap
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pairs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadatumMap'_unknownFields
        (\ x__ y__ -> x__ {_MetadatumMap'_unknownFields = y__})
  defMessage
    = MetadatumMap'_constructor
        {_MetadatumMap'pairs = Data.Vector.Generic.empty,
         _MetadatumMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadatumMap
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MetadatumPair
             -> Data.ProtoLens.Encoding.Bytes.Parser MetadatumMap
        loop x mutable'pairs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'pairs)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'pairs") frozen'pairs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pairs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'pairs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pairs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pairs)
          "MetadatumMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pairs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MetadatumMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadatumMap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MetadatumMap'pairs x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.key' @:: Lens' MetadatumPair Metadatum@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'key' @:: Lens' MetadatumPair (Prelude.Maybe Metadatum)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.value' @:: Lens' MetadatumPair Metadatum@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'value' @:: Lens' MetadatumPair (Prelude.Maybe Metadatum)@ -}
data MetadatumPair
  = MetadatumPair'_constructor {_MetadatumPair'key :: !(Prelude.Maybe Metadatum),
                                _MetadatumPair'value :: !(Prelude.Maybe Metadatum),
                                _MetadatumPair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadatumPair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadatumPair "key" Metadatum where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumPair'key (\ x__ y__ -> x__ {_MetadatumPair'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetadatumPair "maybe'key" (Prelude.Maybe Metadatum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumPair'key (\ x__ y__ -> x__ {_MetadatumPair'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadatumPair "value" Metadatum where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumPair'value
           (\ x__ y__ -> x__ {_MetadatumPair'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetadatumPair "maybe'value" (Prelude.Maybe Metadatum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadatumPair'value
           (\ x__ y__ -> x__ {_MetadatumPair'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadatumPair where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.MetadatumPair"
  packedMessageDescriptor _
    = "\n\
      \\rMetadatumPair\DC24\n\
      \\ETXkey\CAN\SOH \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ETXkey\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadatum)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor MetadatumPair
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadatum)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MetadatumPair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadatumPair'_unknownFields
        (\ x__ y__ -> x__ {_MetadatumPair'_unknownFields = y__})
  defMessage
    = MetadatumPair'_constructor
        {_MetadatumPair'key = Prelude.Nothing,
         _MetadatumPair'value = Prelude.Nothing,
         _MetadatumPair'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadatumPair -> Data.ProtoLens.Encoding.Bytes.Parser MetadatumPair
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadatumPair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MetadatumPair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadatumPair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetadatumPair'key x__)
                (Control.DeepSeq.deepseq (_MetadatumPair'value x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.from' @:: Lens' MirCert MirSource@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.to' @:: Lens' MirCert [MirTarget]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'to' @:: Lens' MirCert (Data.Vector.Vector MirTarget)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.otherPot' @:: Lens' MirCert Data.Word.Word64@ -}
data MirCert
  = MirCert'_constructor {_MirCert'from :: !MirSource,
                          _MirCert'to :: !(Data.Vector.Vector MirTarget),
                          _MirCert'otherPot :: !Data.Word.Word64,
                          _MirCert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MirCert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MirCert "from" MirSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirCert'from (\ x__ y__ -> x__ {_MirCert'from = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MirCert "to" [MirTarget] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirCert'to (\ x__ y__ -> x__ {_MirCert'to = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MirCert "vec'to" (Data.Vector.Vector MirTarget) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirCert'to (\ x__ y__ -> x__ {_MirCert'to = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MirCert "otherPot" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirCert'otherPot (\ x__ y__ -> x__ {_MirCert'otherPot = y__}))
        Prelude.id
instance Data.ProtoLens.Message MirCert where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.MirCert"
  packedMessageDescriptor _
    = "\n\
      \\aMirCert\DC26\n\
      \\EOTfrom\CAN\SOH \SOH(\SO2\".utxorpc.v1alpha.cardano.MirSourceR\EOTfrom\DC22\n\
      \\STXto\CAN\STX \ETX(\v2\".utxorpc.v1alpha.cardano.MirTargetR\STXto\DC2\ESC\n\
      \\tother_pot\CAN\ETX \SOH(\EOTR\botherPot"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor MirSource)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"from")) ::
              Data.ProtoLens.FieldDescriptor MirCert
        to__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MirTarget)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"to")) ::
              Data.ProtoLens.FieldDescriptor MirCert
        otherPot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "other_pot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"otherPot")) ::
              Data.ProtoLens.FieldDescriptor MirCert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, from__field_descriptor),
           (Data.ProtoLens.Tag 2, to__field_descriptor),
           (Data.ProtoLens.Tag 3, otherPot__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MirCert'_unknownFields
        (\ x__ y__ -> x__ {_MirCert'_unknownFields = y__})
  defMessage
    = MirCert'_constructor
        {_MirCert'from = Data.ProtoLens.fieldDefault,
         _MirCert'to = Data.Vector.Generic.empty,
         _MirCert'otherPot = Data.ProtoLens.fieldDefault,
         _MirCert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MirCert
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MirTarget
             -> Data.ProtoLens.Encoding.Bytes.Parser MirCert
        loop x mutable'to
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'to <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'to)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'to") frozen'to x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "from"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"from") y x)
                                  mutable'to
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "to"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'to y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "other_pot"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"otherPot") y x)
                                  mutable'to
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'to
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'to <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'to)
          "MirCert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"from") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'to") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"otherPot") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MirCert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MirCert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MirCert'from x__)
                (Control.DeepSeq.deepseq
                   (_MirCert'to x__)
                   (Control.DeepSeq.deepseq (_MirCert'otherPot x__) ())))
newtype MirSource'UnrecognizedValue
  = MirSource'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data MirSource
  = MIR_SOURCE_UNSPECIFIED |
    MIR_SOURCE_RESERVES |
    MIR_SOURCE_TREASURY |
    MirSource'Unrecognized !MirSource'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum MirSource where
  maybeToEnum 0 = Prelude.Just MIR_SOURCE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just MIR_SOURCE_RESERVES
  maybeToEnum 2 = Prelude.Just MIR_SOURCE_TREASURY
  maybeToEnum k
    = Prelude.Just
        (MirSource'Unrecognized
           (MirSource'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum MIR_SOURCE_UNSPECIFIED = "MIR_SOURCE_UNSPECIFIED"
  showEnum MIR_SOURCE_RESERVES = "MIR_SOURCE_RESERVES"
  showEnum MIR_SOURCE_TREASURY = "MIR_SOURCE_TREASURY"
  showEnum (MirSource'Unrecognized (MirSource'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "MIR_SOURCE_UNSPECIFIED"
    = Prelude.Just MIR_SOURCE_UNSPECIFIED
    | (Prelude.==) k "MIR_SOURCE_RESERVES"
    = Prelude.Just MIR_SOURCE_RESERVES
    | (Prelude.==) k "MIR_SOURCE_TREASURY"
    = Prelude.Just MIR_SOURCE_TREASURY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded MirSource where
  minBound = MIR_SOURCE_UNSPECIFIED
  maxBound = MIR_SOURCE_TREASURY
instance Prelude.Enum MirSource where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum MirSource: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum MIR_SOURCE_UNSPECIFIED = 0
  fromEnum MIR_SOURCE_RESERVES = 1
  fromEnum MIR_SOURCE_TREASURY = 2
  fromEnum (MirSource'Unrecognized (MirSource'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ MIR_SOURCE_TREASURY
    = Prelude.error
        "MirSource.succ: bad argument MIR_SOURCE_TREASURY. This value would be out of bounds."
  succ MIR_SOURCE_UNSPECIFIED = MIR_SOURCE_RESERVES
  succ MIR_SOURCE_RESERVES = MIR_SOURCE_TREASURY
  succ (MirSource'Unrecognized _)
    = Prelude.error "MirSource.succ: bad argument: unrecognized value"
  pred MIR_SOURCE_UNSPECIFIED
    = Prelude.error
        "MirSource.pred: bad argument MIR_SOURCE_UNSPECIFIED. This value would be out of bounds."
  pred MIR_SOURCE_RESERVES = MIR_SOURCE_UNSPECIFIED
  pred MIR_SOURCE_TREASURY = MIR_SOURCE_RESERVES
  pred (MirSource'Unrecognized _)
    = Prelude.error "MirSource.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault MirSource where
  fieldDefault = MIR_SOURCE_UNSPECIFIED
instance Control.DeepSeq.NFData MirSource where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.stakeCredential' @:: Lens' MirTarget StakeCredential@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeCredential' @:: Lens' MirTarget (Prelude.Maybe StakeCredential)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.deltaCoin' @:: Lens' MirTarget Data.Int.Int64@ -}
data MirTarget
  = MirTarget'_constructor {_MirTarget'stakeCredential :: !(Prelude.Maybe StakeCredential),
                            _MirTarget'deltaCoin :: !Data.Int.Int64,
                            _MirTarget'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MirTarget where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MirTarget "stakeCredential" StakeCredential where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirTarget'stakeCredential
           (\ x__ y__ -> x__ {_MirTarget'stakeCredential = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MirTarget "maybe'stakeCredential" (Prelude.Maybe StakeCredential) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirTarget'stakeCredential
           (\ x__ y__ -> x__ {_MirTarget'stakeCredential = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MirTarget "deltaCoin" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MirTarget'deltaCoin
           (\ x__ y__ -> x__ {_MirTarget'deltaCoin = y__}))
        Prelude.id
instance Data.ProtoLens.Message MirTarget where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.MirTarget"
  packedMessageDescriptor _
    = "\n\
      \\tMirTarget\DC2S\n\
      \\DLEstake_credential\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialR\SIstakeCredential\DC2\GS\n\
      \\n\
      \delta_coin\CAN\STX \SOH(\ETXR\tdeltaCoin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stakeCredential__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake_credential"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeCredential)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stakeCredential")) ::
              Data.ProtoLens.FieldDescriptor MirTarget
        deltaCoin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delta_coin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deltaCoin")) ::
              Data.ProtoLens.FieldDescriptor MirTarget
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stakeCredential__field_descriptor),
           (Data.ProtoLens.Tag 2, deltaCoin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MirTarget'_unknownFields
        (\ x__ y__ -> x__ {_MirTarget'_unknownFields = y__})
  defMessage
    = MirTarget'_constructor
        {_MirTarget'stakeCredential = Prelude.Nothing,
         _MirTarget'deltaCoin = Data.ProtoLens.fieldDefault,
         _MirTarget'_unknownFields = []}
  parseMessage
    = let
        loop :: MirTarget -> Data.ProtoLens.Encoding.Bytes.Parser MirTarget
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stake_credential"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stakeCredential") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delta_coin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deltaCoin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MirTarget"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'stakeCredential") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deltaCoin") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MirTarget where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MirTarget'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MirTarget'stakeCredential x__)
                (Control.DeepSeq.deepseq (_MirTarget'deltaCoin x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.policyId' @:: Lens' Multiasset Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.assets' @:: Lens' Multiasset [Asset]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'assets' @:: Lens' Multiasset (Data.Vector.Vector Asset)@ -}
data Multiasset
  = Multiasset'_constructor {_Multiasset'policyId :: !Data.ByteString.ByteString,
                             _Multiasset'assets :: !(Data.Vector.Vector Asset),
                             _Multiasset'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Multiasset where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Multiasset "policyId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Multiasset'policyId
           (\ x__ y__ -> x__ {_Multiasset'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Multiasset "assets" [Asset] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Multiasset'assets (\ x__ y__ -> x__ {_Multiasset'assets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Multiasset "vec'assets" (Data.Vector.Vector Asset) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Multiasset'assets (\ x__ y__ -> x__ {_Multiasset'assets = y__}))
        Prelude.id
instance Data.ProtoLens.Message Multiasset where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Multiasset"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Multiasset\DC2\ESC\n\
      \\tpolicy_id\CAN\SOH \SOH(\fR\bpolicyId\DC26\n\
      \\ACKassets\CAN\STX \ETX(\v2\RS.utxorpc.v1alpha.cardano.AssetR\ACKassets"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor Multiasset
        assets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "assets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Asset)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"assets")) ::
              Data.ProtoLens.FieldDescriptor Multiasset
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policyId__field_descriptor),
           (Data.ProtoLens.Tag 2, assets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Multiasset'_unknownFields
        (\ x__ y__ -> x__ {_Multiasset'_unknownFields = y__})
  defMessage
    = Multiasset'_constructor
        {_Multiasset'policyId = Data.ProtoLens.fieldDefault,
         _Multiasset'assets = Data.Vector.Generic.empty,
         _Multiasset'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Multiasset
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Asset
             -> Data.ProtoLens.Encoding.Bytes.Parser Multiasset
        loop x mutable'assets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'assets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'assets)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'assets") frozen'assets x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
                                  mutable'assets
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "assets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'assets y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'assets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'assets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'assets)
          "Multiasset"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"policyId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'assets") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Multiasset where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Multiasset'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Multiasset'policyId x__)
                (Control.DeepSeq.deepseq (_Multiasset'assets x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'nativeScript' @:: Lens' NativeScript (Prelude.Maybe NativeScript'NativeScript)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'scriptPubkey' @:: Lens' NativeScript (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scriptPubkey' @:: Lens' NativeScript Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'scriptAll' @:: Lens' NativeScript (Prelude.Maybe NativeScriptList)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scriptAll' @:: Lens' NativeScript NativeScriptList@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'scriptAny' @:: Lens' NativeScript (Prelude.Maybe NativeScriptList)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scriptAny' @:: Lens' NativeScript NativeScriptList@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'scriptNOfK' @:: Lens' NativeScript (Prelude.Maybe ScriptNOfK)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scriptNOfK' @:: Lens' NativeScript ScriptNOfK@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'invalidBefore' @:: Lens' NativeScript (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.invalidBefore' @:: Lens' NativeScript Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'invalidHereafter' @:: Lens' NativeScript (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.invalidHereafter' @:: Lens' NativeScript Data.Word.Word64@ -}
data NativeScript
  = NativeScript'_constructor {_NativeScript'nativeScript :: !(Prelude.Maybe NativeScript'NativeScript),
                               _NativeScript'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NativeScript where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data NativeScript'NativeScript
  = NativeScript'ScriptPubkey !Data.ByteString.ByteString |
    NativeScript'ScriptAll !NativeScriptList |
    NativeScript'ScriptAny !NativeScriptList |
    NativeScript'ScriptNOfK !ScriptNOfK |
    NativeScript'InvalidBefore !Data.Word.Word64 |
    NativeScript'InvalidHereafter !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField NativeScript "maybe'nativeScript" (Prelude.Maybe NativeScript'NativeScript) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NativeScript "maybe'scriptPubkey" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'ScriptPubkey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'ScriptPubkey y__))
instance Data.ProtoLens.Field.HasField NativeScript "scriptPubkey" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'ScriptPubkey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'ScriptPubkey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField NativeScript "maybe'scriptAll" (Prelude.Maybe NativeScriptList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'ScriptAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'ScriptAll y__))
instance Data.ProtoLens.Field.HasField NativeScript "scriptAll" NativeScriptList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'ScriptAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'ScriptAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField NativeScript "maybe'scriptAny" (Prelude.Maybe NativeScriptList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'ScriptAny x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'ScriptAny y__))
instance Data.ProtoLens.Field.HasField NativeScript "scriptAny" NativeScriptList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'ScriptAny x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'ScriptAny y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField NativeScript "maybe'scriptNOfK" (Prelude.Maybe ScriptNOfK) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'ScriptNOfK x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'ScriptNOfK y__))
instance Data.ProtoLens.Field.HasField NativeScript "scriptNOfK" ScriptNOfK where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'ScriptNOfK x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'ScriptNOfK y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField NativeScript "maybe'invalidBefore" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'InvalidBefore x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'InvalidBefore y__))
instance Data.ProtoLens.Field.HasField NativeScript "invalidBefore" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'InvalidBefore x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'InvalidBefore y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField NativeScript "maybe'invalidHereafter" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (NativeScript'InvalidHereafter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap NativeScript'InvalidHereafter y__))
instance Data.ProtoLens.Field.HasField NativeScript "invalidHereafter" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScript'nativeScript
           (\ x__ y__ -> x__ {_NativeScript'nativeScript = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (NativeScript'InvalidHereafter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap NativeScript'InvalidHereafter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message NativeScript where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.NativeScript"
  packedMessageDescriptor _
    = "\n\
      \\fNativeScript\DC2%\n\
      \\rscript_pubkey\CAN\SOH \SOH(\fH\NULR\fscriptPubkey\DC2J\n\
      \\n\
      \script_all\CAN\STX \SOH(\v2).utxorpc.v1alpha.cardano.NativeScriptListH\NULR\tscriptAll\DC2J\n\
      \\n\
      \script_any\CAN\ETX \SOH(\v2).utxorpc.v1alpha.cardano.NativeScriptListH\NULR\tscriptAny\DC2H\n\
      \\rscript_n_of_k\CAN\EOT \SOH(\v2#.utxorpc.v1alpha.cardano.ScriptNOfKH\NULR\n\
      \scriptNOfK\DC2'\n\
      \\SOinvalid_before\CAN\ENQ \SOH(\EOTH\NULR\rinvalidBefore\DC2-\n\
      \\DC1invalid_hereafter\CAN\ACK \SOH(\EOTH\NULR\DLEinvalidHereafterB\SI\n\
      \\rnative_script"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scriptPubkey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script_pubkey"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scriptPubkey")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
        scriptAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script_all"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NativeScriptList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scriptAll")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
        scriptAny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script_any"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NativeScriptList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scriptAny")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
        scriptNOfK__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script_n_of_k"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScriptNOfK)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scriptNOfK")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
        invalidBefore__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid_before"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invalidBefore")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
        invalidHereafter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid_hereafter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invalidHereafter")) ::
              Data.ProtoLens.FieldDescriptor NativeScript
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scriptPubkey__field_descriptor),
           (Data.ProtoLens.Tag 2, scriptAll__field_descriptor),
           (Data.ProtoLens.Tag 3, scriptAny__field_descriptor),
           (Data.ProtoLens.Tag 4, scriptNOfK__field_descriptor),
           (Data.ProtoLens.Tag 5, invalidBefore__field_descriptor),
           (Data.ProtoLens.Tag 6, invalidHereafter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NativeScript'_unknownFields
        (\ x__ y__ -> x__ {_NativeScript'_unknownFields = y__})
  defMessage
    = NativeScript'_constructor
        {_NativeScript'nativeScript = Prelude.Nothing,
         _NativeScript'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NativeScript -> Data.ProtoLens.Encoding.Bytes.Parser NativeScript
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "script_pubkey"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scriptPubkey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "script_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scriptAll") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "script_any"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scriptAny") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "script_n_of_k"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scriptNOfK") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "invalid_before"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invalidBefore") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "invalid_hereafter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invalidHereafter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NativeScript"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'nativeScript") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (NativeScript'ScriptPubkey v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (NativeScript'ScriptAll v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (NativeScript'ScriptAny v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (NativeScript'ScriptNOfK v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (NativeScript'InvalidBefore v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                (Prelude.Just (NativeScript'InvalidHereafter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData NativeScript where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NativeScript'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NativeScript'nativeScript x__) ())
instance Control.DeepSeq.NFData NativeScript'NativeScript where
  rnf (NativeScript'ScriptPubkey x__) = Control.DeepSeq.rnf x__
  rnf (NativeScript'ScriptAll x__) = Control.DeepSeq.rnf x__
  rnf (NativeScript'ScriptAny x__) = Control.DeepSeq.rnf x__
  rnf (NativeScript'ScriptNOfK x__) = Control.DeepSeq.rnf x__
  rnf (NativeScript'InvalidBefore x__) = Control.DeepSeq.rnf x__
  rnf (NativeScript'InvalidHereafter x__) = Control.DeepSeq.rnf x__
_NativeScript'ScriptPubkey ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript Data.ByteString.ByteString
_NativeScript'ScriptPubkey
  = Data.ProtoLens.Prism.prism'
      NativeScript'ScriptPubkey
      (\ p__
         -> case p__ of
              (NativeScript'ScriptPubkey p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_NativeScript'ScriptAll ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript NativeScriptList
_NativeScript'ScriptAll
  = Data.ProtoLens.Prism.prism'
      NativeScript'ScriptAll
      (\ p__
         -> case p__ of
              (NativeScript'ScriptAll p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_NativeScript'ScriptAny ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript NativeScriptList
_NativeScript'ScriptAny
  = Data.ProtoLens.Prism.prism'
      NativeScript'ScriptAny
      (\ p__
         -> case p__ of
              (NativeScript'ScriptAny p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_NativeScript'ScriptNOfK ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript ScriptNOfK
_NativeScript'ScriptNOfK
  = Data.ProtoLens.Prism.prism'
      NativeScript'ScriptNOfK
      (\ p__
         -> case p__ of
              (NativeScript'ScriptNOfK p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_NativeScript'InvalidBefore ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript Data.Word.Word64
_NativeScript'InvalidBefore
  = Data.ProtoLens.Prism.prism'
      NativeScript'InvalidBefore
      (\ p__
         -> case p__ of
              (NativeScript'InvalidBefore p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_NativeScript'InvalidHereafter ::
  Data.ProtoLens.Prism.Prism' NativeScript'NativeScript Data.Word.Word64
_NativeScript'InvalidHereafter
  = Data.ProtoLens.Prism.prism'
      NativeScript'InvalidHereafter
      (\ p__
         -> case p__ of
              (NativeScript'InvalidHereafter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.items' @:: Lens' NativeScriptList [NativeScript]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'items' @:: Lens' NativeScriptList (Data.Vector.Vector NativeScript)@ -}
data NativeScriptList
  = NativeScriptList'_constructor {_NativeScriptList'items :: !(Data.Vector.Vector NativeScript),
                                   _NativeScriptList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NativeScriptList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NativeScriptList "items" [NativeScript] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScriptList'items
           (\ x__ y__ -> x__ {_NativeScriptList'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField NativeScriptList "vec'items" (Data.Vector.Vector NativeScript) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NativeScriptList'items
           (\ x__ y__ -> x__ {_NativeScriptList'items = y__}))
        Prelude.id
instance Data.ProtoLens.Message NativeScriptList where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.NativeScriptList"
  packedMessageDescriptor _
    = "\n\
      \\DLENativeScriptList\DC2;\n\
      \\ENQitems\CAN\SOH \ETX(\v2%.utxorpc.v1alpha.cardano.NativeScriptR\ENQitems"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NativeScript)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor NativeScriptList
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, items__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NativeScriptList'_unknownFields
        (\ x__ y__ -> x__ {_NativeScriptList'_unknownFields = y__})
  defMessage
    = NativeScriptList'_constructor
        {_NativeScriptList'items = Data.Vector.Generic.empty,
         _NativeScriptList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NativeScriptList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld NativeScript
             -> Data.ProtoLens.Encoding.Bytes.Parser NativeScriptList
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "NativeScriptList"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData NativeScriptList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NativeScriptList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NativeScriptList'items x__) ())
{- | Fields :
      -}
data OutputPattern
  = OutputPattern'_constructor {_OutputPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutputPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message OutputPattern where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.OutputPattern"
  packedMessageDescriptor _
    = "\n\
      \\rOutputPattern"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutputPattern'_unknownFields
        (\ x__ y__ -> x__ {_OutputPattern'_unknownFields = y__})
  defMessage
    = OutputPattern'_constructor {_OutputPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutputPattern -> Data.ProtoLens.Encoding.Bytes.Parser OutputPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutputPattern"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData OutputPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_OutputPattern'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'plutusData' @:: Lens' PlutusData (Prelude.Maybe PlutusData'PlutusData)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'constr' @:: Lens' PlutusData (Prelude.Maybe Constr)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.constr' @:: Lens' PlutusData Constr@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'map' @:: Lens' PlutusData (Prelude.Maybe PlutusDataMap)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.map' @:: Lens' PlutusData PlutusDataMap@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'bigInt' @:: Lens' PlutusData (Prelude.Maybe BigInt)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.bigInt' @:: Lens' PlutusData BigInt@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'boundedBytes' @:: Lens' PlutusData (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.boundedBytes' @:: Lens' PlutusData Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'array' @:: Lens' PlutusData (Prelude.Maybe PlutusDataArray)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.array' @:: Lens' PlutusData PlutusDataArray@ -}
data PlutusData
  = PlutusData'_constructor {_PlutusData'plutusData :: !(Prelude.Maybe PlutusData'PlutusData),
                             _PlutusData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PlutusData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PlutusData'PlutusData
  = PlutusData'Constr !Constr |
    PlutusData'Map !PlutusDataMap |
    PlutusData'BigInt !BigInt |
    PlutusData'BoundedBytes !Data.ByteString.ByteString |
    PlutusData'Array !PlutusDataArray
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PlutusData "maybe'plutusData" (Prelude.Maybe PlutusData'PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PlutusData "maybe'constr" (Prelude.Maybe Constr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PlutusData'Constr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PlutusData'Constr y__))
instance Data.ProtoLens.Field.HasField PlutusData "constr" Constr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PlutusData'Constr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PlutusData'Constr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PlutusData "maybe'map" (Prelude.Maybe PlutusDataMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PlutusData'Map x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PlutusData'Map y__))
instance Data.ProtoLens.Field.HasField PlutusData "map" PlutusDataMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PlutusData'Map x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PlutusData'Map y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PlutusData "maybe'bigInt" (Prelude.Maybe BigInt) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PlutusData'BigInt x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PlutusData'BigInt y__))
instance Data.ProtoLens.Field.HasField PlutusData "bigInt" BigInt where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PlutusData'BigInt x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PlutusData'BigInt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PlutusData "maybe'boundedBytes" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PlutusData'BoundedBytes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PlutusData'BoundedBytes y__))
instance Data.ProtoLens.Field.HasField PlutusData "boundedBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PlutusData'BoundedBytes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PlutusData'BoundedBytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PlutusData "maybe'array" (Prelude.Maybe PlutusDataArray) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PlutusData'Array x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PlutusData'Array y__))
instance Data.ProtoLens.Field.HasField PlutusData "array" PlutusDataArray where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusData'plutusData
           (\ x__ y__ -> x__ {_PlutusData'plutusData = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PlutusData'Array x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PlutusData'Array y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PlutusData where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.PlutusData"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PlutusData\DC29\n\
      \\ACKconstr\CAN\SOH \SOH(\v2\US.utxorpc.v1alpha.cardano.ConstrH\NULR\ACKconstr\DC2:\n\
      \\ETXmap\CAN\STX \SOH(\v2&.utxorpc.v1alpha.cardano.PlutusDataMapH\NULR\ETXmap\DC2:\n\
      \\abig_int\CAN\ETX \SOH(\v2\US.utxorpc.v1alpha.cardano.BigIntH\NULR\ACKbigInt\DC2%\n\
      \\rbounded_bytes\CAN\EOT \SOH(\fH\NULR\fboundedBytes\DC2@\n\
      \\ENQarray\CAN\ENQ \SOH(\v2(.utxorpc.v1alpha.cardano.PlutusDataArrayH\NULR\ENQarrayB\r\n\
      \\vplutus_data"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        constr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "constr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Constr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'constr")) ::
              Data.ProtoLens.FieldDescriptor PlutusData
        map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusDataMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'map")) ::
              Data.ProtoLens.FieldDescriptor PlutusData
        bigInt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "big_int"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BigInt)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bigInt")) ::
              Data.ProtoLens.FieldDescriptor PlutusData
        boundedBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bounded_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boundedBytes")) ::
              Data.ProtoLens.FieldDescriptor PlutusData
        array__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "array"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusDataArray)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'array")) ::
              Data.ProtoLens.FieldDescriptor PlutusData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, constr__field_descriptor),
           (Data.ProtoLens.Tag 2, map__field_descriptor),
           (Data.ProtoLens.Tag 3, bigInt__field_descriptor),
           (Data.ProtoLens.Tag 4, boundedBytes__field_descriptor),
           (Data.ProtoLens.Tag 5, array__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PlutusData'_unknownFields
        (\ x__ y__ -> x__ {_PlutusData'_unknownFields = y__})
  defMessage
    = PlutusData'_constructor
        {_PlutusData'plutusData = Prelude.Nothing,
         _PlutusData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PlutusData -> Data.ProtoLens.Encoding.Bytes.Parser PlutusData
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "constr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"constr") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"map") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "big_int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bigInt") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bounded_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"boundedBytes") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "array"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"array") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PlutusData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'plutusData") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PlutusData'Constr v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (PlutusData'Map v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (PlutusData'BigInt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (PlutusData'BoundedBytes v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (PlutusData'Array v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PlutusData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PlutusData'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PlutusData'plutusData x__) ())
instance Control.DeepSeq.NFData PlutusData'PlutusData where
  rnf (PlutusData'Constr x__) = Control.DeepSeq.rnf x__
  rnf (PlutusData'Map x__) = Control.DeepSeq.rnf x__
  rnf (PlutusData'BigInt x__) = Control.DeepSeq.rnf x__
  rnf (PlutusData'BoundedBytes x__) = Control.DeepSeq.rnf x__
  rnf (PlutusData'Array x__) = Control.DeepSeq.rnf x__
_PlutusData'Constr ::
  Data.ProtoLens.Prism.Prism' PlutusData'PlutusData Constr
_PlutusData'Constr
  = Data.ProtoLens.Prism.prism'
      PlutusData'Constr
      (\ p__
         -> case p__ of
              (PlutusData'Constr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PlutusData'Map ::
  Data.ProtoLens.Prism.Prism' PlutusData'PlutusData PlutusDataMap
_PlutusData'Map
  = Data.ProtoLens.Prism.prism'
      PlutusData'Map
      (\ p__
         -> case p__ of
              (PlutusData'Map p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PlutusData'BigInt ::
  Data.ProtoLens.Prism.Prism' PlutusData'PlutusData BigInt
_PlutusData'BigInt
  = Data.ProtoLens.Prism.prism'
      PlutusData'BigInt
      (\ p__
         -> case p__ of
              (PlutusData'BigInt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PlutusData'BoundedBytes ::
  Data.ProtoLens.Prism.Prism' PlutusData'PlutusData Data.ByteString.ByteString
_PlutusData'BoundedBytes
  = Data.ProtoLens.Prism.prism'
      PlutusData'BoundedBytes
      (\ p__
         -> case p__ of
              (PlutusData'BoundedBytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PlutusData'Array ::
  Data.ProtoLens.Prism.Prism' PlutusData'PlutusData PlutusDataArray
_PlutusData'Array
  = Data.ProtoLens.Prism.prism'
      PlutusData'Array
      (\ p__
         -> case p__ of
              (PlutusData'Array p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.items' @:: Lens' PlutusDataArray [PlutusData]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'items' @:: Lens' PlutusDataArray (Data.Vector.Vector PlutusData)@ -}
data PlutusDataArray
  = PlutusDataArray'_constructor {_PlutusDataArray'items :: !(Data.Vector.Vector PlutusData),
                                  _PlutusDataArray'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PlutusDataArray where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PlutusDataArray "items" [PlutusData] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataArray'items
           (\ x__ y__ -> x__ {_PlutusDataArray'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PlutusDataArray "vec'items" (Data.Vector.Vector PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataArray'items
           (\ x__ y__ -> x__ {_PlutusDataArray'items = y__}))
        Prelude.id
instance Data.ProtoLens.Message PlutusDataArray where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PlutusDataArray"
  packedMessageDescriptor _
    = "\n\
      \\SIPlutusDataArray\DC29\n\
      \\ENQitems\CAN\SOH \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQitems"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor PlutusDataArray
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, items__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PlutusDataArray'_unknownFields
        (\ x__ y__ -> x__ {_PlutusDataArray'_unknownFields = y__})
  defMessage
    = PlutusDataArray'_constructor
        {_PlutusDataArray'items = Data.Vector.Generic.empty,
         _PlutusDataArray'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PlutusDataArray
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PlutusData
             -> Data.ProtoLens.Encoding.Bytes.Parser PlutusDataArray
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "PlutusDataArray"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PlutusDataArray where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PlutusDataArray'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PlutusDataArray'items x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.pairs' @:: Lens' PlutusDataMap [PlutusDataPair]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'pairs' @:: Lens' PlutusDataMap (Data.Vector.Vector PlutusDataPair)@ -}
data PlutusDataMap
  = PlutusDataMap'_constructor {_PlutusDataMap'pairs :: !(Data.Vector.Vector PlutusDataPair),
                                _PlutusDataMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PlutusDataMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PlutusDataMap "pairs" [PlutusDataPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataMap'pairs
           (\ x__ y__ -> x__ {_PlutusDataMap'pairs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PlutusDataMap "vec'pairs" (Data.Vector.Vector PlutusDataPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataMap'pairs
           (\ x__ y__ -> x__ {_PlutusDataMap'pairs = y__}))
        Prelude.id
instance Data.ProtoLens.Message PlutusDataMap where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PlutusDataMap"
  packedMessageDescriptor _
    = "\n\
      \\rPlutusDataMap\DC2=\n\
      \\ENQpairs\CAN\SOH \ETX(\v2'.utxorpc.v1alpha.cardano.PlutusDataPairR\ENQpairs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pairs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pairs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusDataPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"pairs")) ::
              Data.ProtoLens.FieldDescriptor PlutusDataMap
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pairs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PlutusDataMap'_unknownFields
        (\ x__ y__ -> x__ {_PlutusDataMap'_unknownFields = y__})
  defMessage
    = PlutusDataMap'_constructor
        {_PlutusDataMap'pairs = Data.Vector.Generic.empty,
         _PlutusDataMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PlutusDataMap
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PlutusDataPair
             -> Data.ProtoLens.Encoding.Bytes.Parser PlutusDataMap
        loop x mutable'pairs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'pairs)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'pairs") frozen'pairs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pairs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'pairs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pairs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pairs)
          "PlutusDataMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pairs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PlutusDataMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PlutusDataMap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PlutusDataMap'pairs x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.key' @:: Lens' PlutusDataPair PlutusData@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'key' @:: Lens' PlutusDataPair (Prelude.Maybe PlutusData)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.value' @:: Lens' PlutusDataPair PlutusData@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'value' @:: Lens' PlutusDataPair (Prelude.Maybe PlutusData)@ -}
data PlutusDataPair
  = PlutusDataPair'_constructor {_PlutusDataPair'key :: !(Prelude.Maybe PlutusData),
                                 _PlutusDataPair'value :: !(Prelude.Maybe PlutusData),
                                 _PlutusDataPair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PlutusDataPair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PlutusDataPair "key" PlutusData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataPair'key (\ x__ y__ -> x__ {_PlutusDataPair'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PlutusDataPair "maybe'key" (Prelude.Maybe PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataPair'key (\ x__ y__ -> x__ {_PlutusDataPair'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PlutusDataPair "value" PlutusData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataPair'value
           (\ x__ y__ -> x__ {_PlutusDataPair'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PlutusDataPair "maybe'value" (Prelude.Maybe PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PlutusDataPair'value
           (\ x__ y__ -> x__ {_PlutusDataPair'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message PlutusDataPair where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PlutusDataPair"
  packedMessageDescriptor _
    = "\n\
      \\SOPlutusDataPair\DC25\n\
      \\ETXkey\CAN\SOH \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ETXkey\DC29\n\
      \\ENQvalue\CAN\STX \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor PlutusDataPair
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor PlutusDataPair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PlutusDataPair'_unknownFields
        (\ x__ y__ -> x__ {_PlutusDataPair'_unknownFields = y__})
  defMessage
    = PlutusDataPair'_constructor
        {_PlutusDataPair'key = Prelude.Nothing,
         _PlutusDataPair'value = Prelude.Nothing,
         _PlutusDataPair'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PlutusDataPair
          -> Data.ProtoLens.Encoding.Bytes.Parser PlutusDataPair
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PlutusDataPair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PlutusDataPair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PlutusDataPair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PlutusDataPair'key x__)
                (Control.DeepSeq.deepseq (_PlutusDataPair'value x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.url' @:: Lens' PoolMetadata Data.Text.Text@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.hash' @:: Lens' PoolMetadata Data.ByteString.ByteString@ -}
data PoolMetadata
  = PoolMetadata'_constructor {_PoolMetadata'url :: !Data.Text.Text,
                               _PoolMetadata'hash :: !Data.ByteString.ByteString,
                               _PoolMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PoolMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PoolMetadata "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolMetadata'url (\ x__ y__ -> x__ {_PoolMetadata'url = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolMetadata "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolMetadata'hash (\ x__ y__ -> x__ {_PoolMetadata'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message PoolMetadata where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PoolMetadata"
  packedMessageDescriptor _
    = "\n\
      \\fPoolMetadata\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor PoolMetadata
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor PoolMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, url__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PoolMetadata'_unknownFields
        (\ x__ y__ -> x__ {_PoolMetadata'_unknownFields = y__})
  defMessage
    = PoolMetadata'_constructor
        {_PoolMetadata'url = Data.ProtoLens.fieldDefault,
         _PoolMetadata'hash = Data.ProtoLens.fieldDefault,
         _PoolMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PoolMetadata -> Data.ProtoLens.Encoding.Bytes.Parser PoolMetadata
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PoolMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PoolMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PoolMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PoolMetadata'url x__)
                (Control.DeepSeq.deepseq (_PoolMetadata'hash x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.operator' @:: Lens' PoolRegistrationCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vrfKeyhash' @:: Lens' PoolRegistrationCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.pledge' @:: Lens' PoolRegistrationCert Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.cost' @:: Lens' PoolRegistrationCert Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.margin' @:: Lens' PoolRegistrationCert RationalNumber@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'margin' @:: Lens' PoolRegistrationCert (Prelude.Maybe RationalNumber)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.rewardAccount' @:: Lens' PoolRegistrationCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolOwners' @:: Lens' PoolRegistrationCert [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'poolOwners' @:: Lens' PoolRegistrationCert (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.relays' @:: Lens' PoolRegistrationCert [Relay]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'relays' @:: Lens' PoolRegistrationCert (Data.Vector.Vector Relay)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolMetadata' @:: Lens' PoolRegistrationCert PoolMetadata@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'poolMetadata' @:: Lens' PoolRegistrationCert (Prelude.Maybe PoolMetadata)@ -}
data PoolRegistrationCert
  = PoolRegistrationCert'_constructor {_PoolRegistrationCert'operator :: !Data.ByteString.ByteString,
                                       _PoolRegistrationCert'vrfKeyhash :: !Data.ByteString.ByteString,
                                       _PoolRegistrationCert'pledge :: !Data.Word.Word64,
                                       _PoolRegistrationCert'cost :: !Data.Word.Word64,
                                       _PoolRegistrationCert'margin :: !(Prelude.Maybe RationalNumber),
                                       _PoolRegistrationCert'rewardAccount :: !Data.ByteString.ByteString,
                                       _PoolRegistrationCert'poolOwners :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                       _PoolRegistrationCert'relays :: !(Data.Vector.Vector Relay),
                                       _PoolRegistrationCert'poolMetadata :: !(Prelude.Maybe PoolMetadata),
                                       _PoolRegistrationCert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PoolRegistrationCert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "operator" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'operator
           (\ x__ y__ -> x__ {_PoolRegistrationCert'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "vrfKeyhash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'vrfKeyhash
           (\ x__ y__ -> x__ {_PoolRegistrationCert'vrfKeyhash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "pledge" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'pledge
           (\ x__ y__ -> x__ {_PoolRegistrationCert'pledge = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "cost" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'cost
           (\ x__ y__ -> x__ {_PoolRegistrationCert'cost = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "margin" RationalNumber where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'margin
           (\ x__ y__ -> x__ {_PoolRegistrationCert'margin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "maybe'margin" (Prelude.Maybe RationalNumber) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'margin
           (\ x__ y__ -> x__ {_PoolRegistrationCert'margin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "rewardAccount" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'rewardAccount
           (\ x__ y__ -> x__ {_PoolRegistrationCert'rewardAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "poolOwners" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'poolOwners
           (\ x__ y__ -> x__ {_PoolRegistrationCert'poolOwners = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "vec'poolOwners" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'poolOwners
           (\ x__ y__ -> x__ {_PoolRegistrationCert'poolOwners = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "relays" [Relay] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'relays
           (\ x__ y__ -> x__ {_PoolRegistrationCert'relays = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "vec'relays" (Data.Vector.Vector Relay) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'relays
           (\ x__ y__ -> x__ {_PoolRegistrationCert'relays = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "poolMetadata" PoolMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'poolMetadata
           (\ x__ y__ -> x__ {_PoolRegistrationCert'poolMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PoolRegistrationCert "maybe'poolMetadata" (Prelude.Maybe PoolMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRegistrationCert'poolMetadata
           (\ x__ y__ -> x__ {_PoolRegistrationCert'poolMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message PoolRegistrationCert where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PoolRegistrationCert"
  packedMessageDescriptor _
    = "\n\
      \\DC4PoolRegistrationCert\DC2\SUB\n\
      \\boperator\CAN\SOH \SOH(\fR\boperator\DC2\US\n\
      \\vvrf_keyhash\CAN\STX \SOH(\fR\n\
      \vrfKeyhash\DC2\SYN\n\
      \\ACKpledge\CAN\ETX \SOH(\EOTR\ACKpledge\DC2\DC2\n\
      \\EOTcost\CAN\EOT \SOH(\EOTR\EOTcost\DC2?\n\
      \\ACKmargin\CAN\ENQ \SOH(\v2'.utxorpc.v1alpha.cardano.RationalNumberR\ACKmargin\DC2%\n\
      \\SOreward_account\CAN\ACK \SOH(\fR\rrewardAccount\DC2\US\n\
      \\vpool_owners\CAN\a \ETX(\fR\n\
      \poolOwners\DC26\n\
      \\ACKrelays\CAN\b \ETX(\v2\RS.utxorpc.v1alpha.cardano.RelayR\ACKrelays\DC2J\n\
      \\rpool_metadata\CAN\t \SOH(\v2%.utxorpc.v1alpha.cardano.PoolMetadataR\fpoolMetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        vrfKeyhash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vrf_keyhash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"vrfKeyhash")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        pledge__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pledge"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"pledge")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        cost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cost"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cost")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        margin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "margin"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RationalNumber)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'margin")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        rewardAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward_account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rewardAccount")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        poolOwners__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_owners"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"poolOwners")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        relays__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "relays"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Relay)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"relays")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
        poolMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PoolMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'poolMetadata")) ::
              Data.ProtoLens.FieldDescriptor PoolRegistrationCert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, vrfKeyhash__field_descriptor),
           (Data.ProtoLens.Tag 3, pledge__field_descriptor),
           (Data.ProtoLens.Tag 4, cost__field_descriptor),
           (Data.ProtoLens.Tag 5, margin__field_descriptor),
           (Data.ProtoLens.Tag 6, rewardAccount__field_descriptor),
           (Data.ProtoLens.Tag 7, poolOwners__field_descriptor),
           (Data.ProtoLens.Tag 8, relays__field_descriptor),
           (Data.ProtoLens.Tag 9, poolMetadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PoolRegistrationCert'_unknownFields
        (\ x__ y__ -> x__ {_PoolRegistrationCert'_unknownFields = y__})
  defMessage
    = PoolRegistrationCert'_constructor
        {_PoolRegistrationCert'operator = Data.ProtoLens.fieldDefault,
         _PoolRegistrationCert'vrfKeyhash = Data.ProtoLens.fieldDefault,
         _PoolRegistrationCert'pledge = Data.ProtoLens.fieldDefault,
         _PoolRegistrationCert'cost = Data.ProtoLens.fieldDefault,
         _PoolRegistrationCert'margin = Prelude.Nothing,
         _PoolRegistrationCert'rewardAccount = Data.ProtoLens.fieldDefault,
         _PoolRegistrationCert'poolOwners = Data.Vector.Generic.empty,
         _PoolRegistrationCert'relays = Data.Vector.Generic.empty,
         _PoolRegistrationCert'poolMetadata = Prelude.Nothing,
         _PoolRegistrationCert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PoolRegistrationCert
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Relay
                -> Data.ProtoLens.Encoding.Bytes.Parser PoolRegistrationCert
        loop x mutable'poolOwners mutable'relays
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'poolOwners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'poolOwners)
                      frozen'relays <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'relays)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'poolOwners") frozen'poolOwners
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'relays") frozen'relays x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
                                  mutable'poolOwners mutable'relays
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vrf_keyhash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vrfKeyhash") y x)
                                  mutable'poolOwners mutable'relays
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pledge"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pledge") y x)
                                  mutable'poolOwners mutable'relays
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cost"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cost") y x)
                                  mutable'poolOwners mutable'relays
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "margin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"margin") y x)
                                  mutable'poolOwners mutable'relays
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "reward_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rewardAccount") y x)
                                  mutable'poolOwners mutable'relays
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "pool_owners"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'poolOwners y)
                                loop x v mutable'relays
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "relays"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'relays y)
                                loop x mutable'poolOwners v
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pool_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"poolMetadata") y x)
                                  mutable'poolOwners mutable'relays
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'poolOwners mutable'relays
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'poolOwners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'relays <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'poolOwners mutable'relays)
          "PoolRegistrationCert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"vrfKeyhash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"pledge") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cost") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'margin") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"rewardAccount") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'poolOwners") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'relays") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'poolMetadata") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData PoolRegistrationCert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PoolRegistrationCert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PoolRegistrationCert'operator x__)
                (Control.DeepSeq.deepseq
                   (_PoolRegistrationCert'vrfKeyhash x__)
                   (Control.DeepSeq.deepseq
                      (_PoolRegistrationCert'pledge x__)
                      (Control.DeepSeq.deepseq
                         (_PoolRegistrationCert'cost x__)
                         (Control.DeepSeq.deepseq
                            (_PoolRegistrationCert'margin x__)
                            (Control.DeepSeq.deepseq
                               (_PoolRegistrationCert'rewardAccount x__)
                               (Control.DeepSeq.deepseq
                                  (_PoolRegistrationCert'poolOwners x__)
                                  (Control.DeepSeq.deepseq
                                     (_PoolRegistrationCert'relays x__)
                                     (Control.DeepSeq.deepseq
                                        (_PoolRegistrationCert'poolMetadata x__) ())))))))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolKeyhash' @:: Lens' PoolRetirementCert Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.epoch' @:: Lens' PoolRetirementCert Data.Word.Word64@ -}
data PoolRetirementCert
  = PoolRetirementCert'_constructor {_PoolRetirementCert'poolKeyhash :: !Data.ByteString.ByteString,
                                     _PoolRetirementCert'epoch :: !Data.Word.Word64,
                                     _PoolRetirementCert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PoolRetirementCert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PoolRetirementCert "poolKeyhash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRetirementCert'poolKeyhash
           (\ x__ y__ -> x__ {_PoolRetirementCert'poolKeyhash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PoolRetirementCert "epoch" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PoolRetirementCert'epoch
           (\ x__ y__ -> x__ {_PoolRetirementCert'epoch = y__}))
        Prelude.id
instance Data.ProtoLens.Message PoolRetirementCert where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.PoolRetirementCert"
  packedMessageDescriptor _
    = "\n\
      \\DC2PoolRetirementCert\DC2!\n\
      \\fpool_keyhash\CAN\SOH \SOH(\fR\vpoolKeyhash\DC2\DC4\n\
      \\ENQepoch\CAN\STX \SOH(\EOTR\ENQepoch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        poolKeyhash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_keyhash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"poolKeyhash")) ::
              Data.ProtoLens.FieldDescriptor PoolRetirementCert
        epoch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "epoch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"epoch")) ::
              Data.ProtoLens.FieldDescriptor PoolRetirementCert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, poolKeyhash__field_descriptor),
           (Data.ProtoLens.Tag 2, epoch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PoolRetirementCert'_unknownFields
        (\ x__ y__ -> x__ {_PoolRetirementCert'_unknownFields = y__})
  defMessage
    = PoolRetirementCert'_constructor
        {_PoolRetirementCert'poolKeyhash = Data.ProtoLens.fieldDefault,
         _PoolRetirementCert'epoch = Data.ProtoLens.fieldDefault,
         _PoolRetirementCert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PoolRetirementCert
          -> Data.ProtoLens.Encoding.Bytes.Parser PoolRetirementCert
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "pool_keyhash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"poolKeyhash") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "epoch"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"epoch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PoolRetirementCert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"poolKeyhash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"epoch") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PoolRetirementCert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PoolRetirementCert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PoolRetirementCert'poolKeyhash x__)
                (Control.DeepSeq.deepseq (_PoolRetirementCert'epoch x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.numerator' @:: Lens' RationalNumber Data.Int.Int32@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.denominator' @:: Lens' RationalNumber Data.Word.Word32@ -}
data RationalNumber
  = RationalNumber'_constructor {_RationalNumber'numerator :: !Data.Int.Int32,
                                 _RationalNumber'denominator :: !Data.Word.Word32,
                                 _RationalNumber'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RationalNumber where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RationalNumber "numerator" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RationalNumber'numerator
           (\ x__ y__ -> x__ {_RationalNumber'numerator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RationalNumber "denominator" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RationalNumber'denominator
           (\ x__ y__ -> x__ {_RationalNumber'denominator = y__}))
        Prelude.id
instance Data.ProtoLens.Message RationalNumber where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.RationalNumber"
  packedMessageDescriptor _
    = "\n\
      \\SORationalNumber\DC2\FS\n\
      \\tnumerator\CAN\SOH \SOH(\ENQR\tnumerator\DC2 \n\
      \\vdenominator\CAN\STX \SOH(\rR\vdenominator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        numerator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "numerator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numerator")) ::
              Data.ProtoLens.FieldDescriptor RationalNumber
        denominator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denominator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"denominator")) ::
              Data.ProtoLens.FieldDescriptor RationalNumber
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, numerator__field_descriptor),
           (Data.ProtoLens.Tag 2, denominator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RationalNumber'_unknownFields
        (\ x__ y__ -> x__ {_RationalNumber'_unknownFields = y__})
  defMessage
    = RationalNumber'_constructor
        {_RationalNumber'numerator = Data.ProtoLens.fieldDefault,
         _RationalNumber'denominator = Data.ProtoLens.fieldDefault,
         _RationalNumber'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RationalNumber
          -> Data.ProtoLens.Encoding.Bytes.Parser RationalNumber
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "numerator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numerator") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "denominator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"denominator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RationalNumber"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"numerator") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"denominator") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RationalNumber where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RationalNumber'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RationalNumber'numerator x__)
                (Control.DeepSeq.deepseq (_RationalNumber'denominator x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.purpose' @:: Lens' Redeemer RedeemerPurpose@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.datum' @:: Lens' Redeemer PlutusData@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'datum' @:: Lens' Redeemer (Prelude.Maybe PlutusData)@ -}
data Redeemer
  = Redeemer'_constructor {_Redeemer'purpose :: !RedeemerPurpose,
                           _Redeemer'datum :: !(Prelude.Maybe PlutusData),
                           _Redeemer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Redeemer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Redeemer "purpose" RedeemerPurpose where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redeemer'purpose (\ x__ y__ -> x__ {_Redeemer'purpose = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Redeemer "datum" PlutusData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redeemer'datum (\ x__ y__ -> x__ {_Redeemer'datum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Redeemer "maybe'datum" (Prelude.Maybe PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redeemer'datum (\ x__ y__ -> x__ {_Redeemer'datum = y__}))
        Prelude.id
instance Data.ProtoLens.Message Redeemer where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Redeemer"
  packedMessageDescriptor _
    = "\n\
      \\bRedeemer\DC2B\n\
      \\apurpose\CAN\SOH \SOH(\SO2(.utxorpc.v1alpha.cardano.RedeemerPurposeR\apurpose\DC29\n\
      \\ENQdatum\CAN\STX \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQdatum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        purpose__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "purpose"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RedeemerPurpose)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"purpose")) ::
              Data.ProtoLens.FieldDescriptor Redeemer
        datum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "datum"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'datum")) ::
              Data.ProtoLens.FieldDescriptor Redeemer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, purpose__field_descriptor),
           (Data.ProtoLens.Tag 2, datum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Redeemer'_unknownFields
        (\ x__ y__ -> x__ {_Redeemer'_unknownFields = y__})
  defMessage
    = Redeemer'_constructor
        {_Redeemer'purpose = Data.ProtoLens.fieldDefault,
         _Redeemer'datum = Prelude.Nothing, _Redeemer'_unknownFields = []}
  parseMessage
    = let
        loop :: Redeemer -> Data.ProtoLens.Encoding.Bytes.Parser Redeemer
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "purpose"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"purpose") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "datum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"datum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Redeemer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"purpose") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'datum") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Redeemer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Redeemer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Redeemer'purpose x__)
                (Control.DeepSeq.deepseq (_Redeemer'datum x__) ()))
newtype RedeemerPurpose'UnrecognizedValue
  = RedeemerPurpose'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RedeemerPurpose
  = REDEEMER_PURPOSE_UNSPECIFIED |
    REDEEMER_PURPOSE_SPEND |
    REDEEMER_PURPOSE_MINT |
    REDEEMER_PURPOSE_CERT |
    REDEEMER_PURPOSE_REWARD |
    RedeemerPurpose'Unrecognized !RedeemerPurpose'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RedeemerPurpose where
  maybeToEnum 0 = Prelude.Just REDEEMER_PURPOSE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just REDEEMER_PURPOSE_SPEND
  maybeToEnum 2 = Prelude.Just REDEEMER_PURPOSE_MINT
  maybeToEnum 3 = Prelude.Just REDEEMER_PURPOSE_CERT
  maybeToEnum 4 = Prelude.Just REDEEMER_PURPOSE_REWARD
  maybeToEnum k
    = Prelude.Just
        (RedeemerPurpose'Unrecognized
           (RedeemerPurpose'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum REDEEMER_PURPOSE_UNSPECIFIED
    = "REDEEMER_PURPOSE_UNSPECIFIED"
  showEnum REDEEMER_PURPOSE_SPEND = "REDEEMER_PURPOSE_SPEND"
  showEnum REDEEMER_PURPOSE_MINT = "REDEEMER_PURPOSE_MINT"
  showEnum REDEEMER_PURPOSE_CERT = "REDEEMER_PURPOSE_CERT"
  showEnum REDEEMER_PURPOSE_REWARD = "REDEEMER_PURPOSE_REWARD"
  showEnum
    (RedeemerPurpose'Unrecognized (RedeemerPurpose'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REDEEMER_PURPOSE_UNSPECIFIED"
    = Prelude.Just REDEEMER_PURPOSE_UNSPECIFIED
    | (Prelude.==) k "REDEEMER_PURPOSE_SPEND"
    = Prelude.Just REDEEMER_PURPOSE_SPEND
    | (Prelude.==) k "REDEEMER_PURPOSE_MINT"
    = Prelude.Just REDEEMER_PURPOSE_MINT
    | (Prelude.==) k "REDEEMER_PURPOSE_CERT"
    = Prelude.Just REDEEMER_PURPOSE_CERT
    | (Prelude.==) k "REDEEMER_PURPOSE_REWARD"
    = Prelude.Just REDEEMER_PURPOSE_REWARD
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RedeemerPurpose where
  minBound = REDEEMER_PURPOSE_UNSPECIFIED
  maxBound = REDEEMER_PURPOSE_REWARD
instance Prelude.Enum RedeemerPurpose where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RedeemerPurpose: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum REDEEMER_PURPOSE_UNSPECIFIED = 0
  fromEnum REDEEMER_PURPOSE_SPEND = 1
  fromEnum REDEEMER_PURPOSE_MINT = 2
  fromEnum REDEEMER_PURPOSE_CERT = 3
  fromEnum REDEEMER_PURPOSE_REWARD = 4
  fromEnum
    (RedeemerPurpose'Unrecognized (RedeemerPurpose'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ REDEEMER_PURPOSE_REWARD
    = Prelude.error
        "RedeemerPurpose.succ: bad argument REDEEMER_PURPOSE_REWARD. This value would be out of bounds."
  succ REDEEMER_PURPOSE_UNSPECIFIED = REDEEMER_PURPOSE_SPEND
  succ REDEEMER_PURPOSE_SPEND = REDEEMER_PURPOSE_MINT
  succ REDEEMER_PURPOSE_MINT = REDEEMER_PURPOSE_CERT
  succ REDEEMER_PURPOSE_CERT = REDEEMER_PURPOSE_REWARD
  succ (RedeemerPurpose'Unrecognized _)
    = Prelude.error
        "RedeemerPurpose.succ: bad argument: unrecognized value"
  pred REDEEMER_PURPOSE_UNSPECIFIED
    = Prelude.error
        "RedeemerPurpose.pred: bad argument REDEEMER_PURPOSE_UNSPECIFIED. This value would be out of bounds."
  pred REDEEMER_PURPOSE_SPEND = REDEEMER_PURPOSE_UNSPECIFIED
  pred REDEEMER_PURPOSE_MINT = REDEEMER_PURPOSE_SPEND
  pred REDEEMER_PURPOSE_CERT = REDEEMER_PURPOSE_MINT
  pred REDEEMER_PURPOSE_REWARD = REDEEMER_PURPOSE_CERT
  pred (RedeemerPurpose'Unrecognized _)
    = Prelude.error
        "RedeemerPurpose.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RedeemerPurpose where
  fieldDefault = REDEEMER_PURPOSE_UNSPECIFIED
instance Control.DeepSeq.NFData RedeemerPurpose where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.ipV4' @:: Lens' Relay Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.ipV6' @:: Lens' Relay Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.dnsName' @:: Lens' Relay Data.Text.Text@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.port' @:: Lens' Relay Data.Word.Word32@ -}
data Relay
  = Relay'_constructor {_Relay'ipV4 :: !Data.ByteString.ByteString,
                        _Relay'ipV6 :: !Data.ByteString.ByteString,
                        _Relay'dnsName :: !Data.Text.Text,
                        _Relay'port :: !Data.Word.Word32,
                        _Relay'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Relay where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Relay "ipV4" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Relay'ipV4 (\ x__ y__ -> x__ {_Relay'ipV4 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Relay "ipV6" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Relay'ipV6 (\ x__ y__ -> x__ {_Relay'ipV6 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Relay "dnsName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Relay'dnsName (\ x__ y__ -> x__ {_Relay'dnsName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Relay "port" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Relay'port (\ x__ y__ -> x__ {_Relay'port = y__}))
        Prelude.id
instance Data.ProtoLens.Message Relay where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Relay"
  packedMessageDescriptor _
    = "\n\
      \\ENQRelay\DC2\DC3\n\
      \\ENQip_v4\CAN\SOH \SOH(\fR\EOTipV4\DC2\DC3\n\
      \\ENQip_v6\CAN\STX \SOH(\fR\EOTipV6\DC2\EM\n\
      \\bdns_name\CAN\ETX \SOH(\tR\adnsName\DC2\DC2\n\
      \\EOTport\CAN\EOT \SOH(\rR\EOTport"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ipV4__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_v4"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"ipV4")) ::
              Data.ProtoLens.FieldDescriptor Relay
        ipV6__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_v6"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"ipV6")) ::
              Data.ProtoLens.FieldDescriptor Relay
        dnsName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"dnsName")) ::
              Data.ProtoLens.FieldDescriptor Relay
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"port")) ::
              Data.ProtoLens.FieldDescriptor Relay
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ipV4__field_descriptor),
           (Data.ProtoLens.Tag 2, ipV6__field_descriptor),
           (Data.ProtoLens.Tag 3, dnsName__field_descriptor),
           (Data.ProtoLens.Tag 4, port__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Relay'_unknownFields
        (\ x__ y__ -> x__ {_Relay'_unknownFields = y__})
  defMessage
    = Relay'_constructor
        {_Relay'ipV4 = Data.ProtoLens.fieldDefault,
         _Relay'ipV6 = Data.ProtoLens.fieldDefault,
         _Relay'dnsName = Data.ProtoLens.fieldDefault,
         _Relay'port = Data.ProtoLens.fieldDefault,
         _Relay'_unknownFields = []}
  parseMessage
    = let
        loop :: Relay -> Data.ProtoLens.Encoding.Bytes.Parser Relay
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "ip_v4"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ipV4") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "ip_v6"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ipV6") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "dns_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dnsName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Relay"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ipV4") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ipV6") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dnsName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"port") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Relay where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Relay'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Relay'ipV4 x__)
                (Control.DeepSeq.deepseq
                   (_Relay'ipV6 x__)
                   (Control.DeepSeq.deepseq
                      (_Relay'dnsName x__)
                      (Control.DeepSeq.deepseq (_Relay'port x__) ()))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'script' @:: Lens' Script (Prelude.Maybe Script'Script)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'native' @:: Lens' Script (Prelude.Maybe NativeScript)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.native' @:: Lens' Script NativeScript@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'plutusV1' @:: Lens' Script (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.plutusV1' @:: Lens' Script Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'plutusV2' @:: Lens' Script (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.plutusV2' @:: Lens' Script Data.ByteString.ByteString@ -}
data Script
  = Script'_constructor {_Script'script :: !(Prelude.Maybe Script'Script),
                         _Script'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Script where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Script'Script
  = Script'Native !NativeScript |
    Script'PlutusV1 !Data.ByteString.ByteString |
    Script'PlutusV2 !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Script "maybe'script" (Prelude.Maybe Script'Script) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Script "maybe'native" (Prelude.Maybe NativeScript) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Script'Native x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Script'Native y__))
instance Data.ProtoLens.Field.HasField Script "native" NativeScript where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Script'Native x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Script'Native y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Script "maybe'plutusV1" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Script'PlutusV1 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Script'PlutusV1 y__))
instance Data.ProtoLens.Field.HasField Script "plutusV1" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Script'PlutusV1 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Script'PlutusV1 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Script "maybe'plutusV2" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Script'PlutusV2 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Script'PlutusV2 y__))
instance Data.ProtoLens.Field.HasField Script "plutusV2" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Script'script (\ x__ y__ -> x__ {_Script'script = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Script'PlutusV2 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Script'PlutusV2 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Script where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Script"
  packedMessageDescriptor _
    = "\n\
      \\ACKScript\DC2?\n\
      \\ACKnative\CAN\SOH \SOH(\v2%.utxorpc.v1alpha.cardano.NativeScriptH\NULR\ACKnative\DC2\GS\n\
      \\tplutus_v1\CAN\STX \SOH(\fH\NULR\bplutusV1\DC2\GS\n\
      \\tplutus_v2\CAN\ETX \SOH(\fH\NULR\bplutusV2B\b\n\
      \\ACKscript"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        native__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "native"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NativeScript)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'native")) ::
              Data.ProtoLens.FieldDescriptor Script
        plutusV1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plutus_v1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'plutusV1")) ::
              Data.ProtoLens.FieldDescriptor Script
        plutusV2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plutus_v2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'plutusV2")) ::
              Data.ProtoLens.FieldDescriptor Script
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, native__field_descriptor),
           (Data.ProtoLens.Tag 2, plutusV1__field_descriptor),
           (Data.ProtoLens.Tag 3, plutusV2__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Script'_unknownFields
        (\ x__ y__ -> x__ {_Script'_unknownFields = y__})
  defMessage
    = Script'_constructor
        {_Script'script = Prelude.Nothing, _Script'_unknownFields = []}
  parseMessage
    = let
        loop :: Script -> Data.ProtoLens.Encoding.Bytes.Parser Script
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "native"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"native") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "plutus_v1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"plutusV1") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "plutus_v2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"plutusV2") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Script"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'script") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Script'Native v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Script'PlutusV1 v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (Script'PlutusV2 v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Script where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Script'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Script'script x__) ())
instance Control.DeepSeq.NFData Script'Script where
  rnf (Script'Native x__) = Control.DeepSeq.rnf x__
  rnf (Script'PlutusV1 x__) = Control.DeepSeq.rnf x__
  rnf (Script'PlutusV2 x__) = Control.DeepSeq.rnf x__
_Script'Native ::
  Data.ProtoLens.Prism.Prism' Script'Script NativeScript
_Script'Native
  = Data.ProtoLens.Prism.prism'
      Script'Native
      (\ p__
         -> case p__ of
              (Script'Native p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Script'PlutusV1 ::
  Data.ProtoLens.Prism.Prism' Script'Script Data.ByteString.ByteString
_Script'PlutusV1
  = Data.ProtoLens.Prism.prism'
      Script'PlutusV1
      (\ p__
         -> case p__ of
              (Script'PlutusV1 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Script'PlutusV2 ::
  Data.ProtoLens.Prism.Prism' Script'Script Data.ByteString.ByteString
_Script'PlutusV2
  = Data.ProtoLens.Prism.prism'
      Script'PlutusV2
      (\ p__
         -> case p__ of
              (Script'PlutusV2 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.k' @:: Lens' ScriptNOfK Data.Word.Word32@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scripts' @:: Lens' ScriptNOfK [NativeScript]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'scripts' @:: Lens' ScriptNOfK (Data.Vector.Vector NativeScript)@ -}
data ScriptNOfK
  = ScriptNOfK'_constructor {_ScriptNOfK'k :: !Data.Word.Word32,
                             _ScriptNOfK'scripts :: !(Data.Vector.Vector NativeScript),
                             _ScriptNOfK'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScriptNOfK where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScriptNOfK "k" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScriptNOfK'k (\ x__ y__ -> x__ {_ScriptNOfK'k = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScriptNOfK "scripts" [NativeScript] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScriptNOfK'scripts (\ x__ y__ -> x__ {_ScriptNOfK'scripts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScriptNOfK "vec'scripts" (Data.Vector.Vector NativeScript) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScriptNOfK'scripts (\ x__ y__ -> x__ {_ScriptNOfK'scripts = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScriptNOfK where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.ScriptNOfK"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ScriptNOfK\DC2\f\n\
      \\SOHk\CAN\SOH \SOH(\rR\SOHk\DC2?\n\
      \\ascripts\CAN\STX \ETX(\v2%.utxorpc.v1alpha.cardano.NativeScriptR\ascripts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        k__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "k"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"k")) ::
              Data.ProtoLens.FieldDescriptor ScriptNOfK
        scripts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scripts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NativeScript)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"scripts")) ::
              Data.ProtoLens.FieldDescriptor ScriptNOfK
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, k__field_descriptor),
           (Data.ProtoLens.Tag 2, scripts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScriptNOfK'_unknownFields
        (\ x__ y__ -> x__ {_ScriptNOfK'_unknownFields = y__})
  defMessage
    = ScriptNOfK'_constructor
        {_ScriptNOfK'k = Data.ProtoLens.fieldDefault,
         _ScriptNOfK'scripts = Data.Vector.Generic.empty,
         _ScriptNOfK'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScriptNOfK
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld NativeScript
             -> Data.ProtoLens.Encoding.Bytes.Parser ScriptNOfK
        loop x mutable'scripts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'scripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'scripts)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'scripts") frozen'scripts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "k"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"k") y x)
                                  mutable'scripts
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "scripts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'scripts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'scripts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'scripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'scripts)
          "ScriptNOfK"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"k") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'scripts") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScriptNOfK where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScriptNOfK'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScriptNOfK'k x__)
                (Control.DeepSeq.deepseq (_ScriptNOfK'scripts x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeCredential' @:: Lens' StakeCredential (Prelude.Maybe StakeCredential'StakeCredential)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'addrKeyHash' @:: Lens' StakeCredential (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.addrKeyHash' @:: Lens' StakeCredential Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'scriptHash' @:: Lens' StakeCredential (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.scriptHash' @:: Lens' StakeCredential Data.ByteString.ByteString@ -}
data StakeCredential
  = StakeCredential'_constructor {_StakeCredential'stakeCredential :: !(Prelude.Maybe StakeCredential'StakeCredential),
                                  _StakeCredential'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StakeCredential where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StakeCredential'StakeCredential
  = StakeCredential'AddrKeyHash !Data.ByteString.ByteString |
    StakeCredential'ScriptHash !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StakeCredential "maybe'stakeCredential" (Prelude.Maybe StakeCredential'StakeCredential) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeCredential'stakeCredential
           (\ x__ y__ -> x__ {_StakeCredential'stakeCredential = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StakeCredential "maybe'addrKeyHash" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeCredential'stakeCredential
           (\ x__ y__ -> x__ {_StakeCredential'stakeCredential = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StakeCredential'AddrKeyHash x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StakeCredential'AddrKeyHash y__))
instance Data.ProtoLens.Field.HasField StakeCredential "addrKeyHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeCredential'stakeCredential
           (\ x__ y__ -> x__ {_StakeCredential'stakeCredential = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StakeCredential'AddrKeyHash x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StakeCredential'AddrKeyHash y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StakeCredential "maybe'scriptHash" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeCredential'stakeCredential
           (\ x__ y__ -> x__ {_StakeCredential'stakeCredential = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StakeCredential'ScriptHash x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StakeCredential'ScriptHash y__))
instance Data.ProtoLens.Field.HasField StakeCredential "scriptHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeCredential'stakeCredential
           (\ x__ y__ -> x__ {_StakeCredential'stakeCredential = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StakeCredential'ScriptHash x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StakeCredential'ScriptHash y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message StakeCredential where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.StakeCredential"
  packedMessageDescriptor _
    = "\n\
      \\SIStakeCredential\DC2$\n\
      \\raddr_key_hash\CAN\SOH \SOH(\fH\NULR\vaddrKeyHash\DC2!\n\
      \\vscript_hash\CAN\STX \SOH(\fH\NULR\n\
      \scriptHashB\DC2\n\
      \\DLEstake_credential"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addrKeyHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr_key_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addrKeyHash")) ::
              Data.ProtoLens.FieldDescriptor StakeCredential
        scriptHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scriptHash")) ::
              Data.ProtoLens.FieldDescriptor StakeCredential
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addrKeyHash__field_descriptor),
           (Data.ProtoLens.Tag 2, scriptHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StakeCredential'_unknownFields
        (\ x__ y__ -> x__ {_StakeCredential'_unknownFields = y__})
  defMessage
    = StakeCredential'_constructor
        {_StakeCredential'stakeCredential = Prelude.Nothing,
         _StakeCredential'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StakeCredential
          -> Data.ProtoLens.Encoding.Bytes.Parser StakeCredential
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "addr_key_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"addrKeyHash") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "script_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scriptHash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StakeCredential"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'stakeCredential") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StakeCredential'AddrKeyHash v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (StakeCredential'ScriptHash v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StakeCredential where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StakeCredential'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StakeCredential'stakeCredential x__) ())
instance Control.DeepSeq.NFData StakeCredential'StakeCredential where
  rnf (StakeCredential'AddrKeyHash x__) = Control.DeepSeq.rnf x__
  rnf (StakeCredential'ScriptHash x__) = Control.DeepSeq.rnf x__
_StakeCredential'AddrKeyHash ::
  Data.ProtoLens.Prism.Prism' StakeCredential'StakeCredential Data.ByteString.ByteString
_StakeCredential'AddrKeyHash
  = Data.ProtoLens.Prism.prism'
      StakeCredential'AddrKeyHash
      (\ p__
         -> case p__ of
              (StakeCredential'AddrKeyHash p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StakeCredential'ScriptHash ::
  Data.ProtoLens.Prism.Prism' StakeCredential'StakeCredential Data.ByteString.ByteString
_StakeCredential'ScriptHash
  = Data.ProtoLens.Prism.prism'
      StakeCredential'ScriptHash
      (\ p__
         -> case p__ of
              (StakeCredential'ScriptHash p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.stakeCredential' @:: Lens' StakeDelegationCert StakeCredential@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'stakeCredential' @:: Lens' StakeDelegationCert (Prelude.Maybe StakeCredential)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.poolKeyhash' @:: Lens' StakeDelegationCert Data.ByteString.ByteString@ -}
data StakeDelegationCert
  = StakeDelegationCert'_constructor {_StakeDelegationCert'stakeCredential :: !(Prelude.Maybe StakeCredential),
                                      _StakeDelegationCert'poolKeyhash :: !Data.ByteString.ByteString,
                                      _StakeDelegationCert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StakeDelegationCert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StakeDelegationCert "stakeCredential" StakeCredential where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeDelegationCert'stakeCredential
           (\ x__ y__ -> x__ {_StakeDelegationCert'stakeCredential = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StakeDelegationCert "maybe'stakeCredential" (Prelude.Maybe StakeCredential) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeDelegationCert'stakeCredential
           (\ x__ y__ -> x__ {_StakeDelegationCert'stakeCredential = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StakeDelegationCert "poolKeyhash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeDelegationCert'poolKeyhash
           (\ x__ y__ -> x__ {_StakeDelegationCert'poolKeyhash = y__}))
        Prelude.id
instance Data.ProtoLens.Message StakeDelegationCert where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.StakeDelegationCert"
  packedMessageDescriptor _
    = "\n\
      \\DC3StakeDelegationCert\DC2S\n\
      \\DLEstake_credential\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialR\SIstakeCredential\DC2!\n\
      \\fpool_keyhash\CAN\STX \SOH(\fR\vpoolKeyhash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stakeCredential__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake_credential"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeCredential)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stakeCredential")) ::
              Data.ProtoLens.FieldDescriptor StakeDelegationCert
        poolKeyhash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_keyhash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"poolKeyhash")) ::
              Data.ProtoLens.FieldDescriptor StakeDelegationCert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stakeCredential__field_descriptor),
           (Data.ProtoLens.Tag 2, poolKeyhash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StakeDelegationCert'_unknownFields
        (\ x__ y__ -> x__ {_StakeDelegationCert'_unknownFields = y__})
  defMessage
    = StakeDelegationCert'_constructor
        {_StakeDelegationCert'stakeCredential = Prelude.Nothing,
         _StakeDelegationCert'poolKeyhash = Data.ProtoLens.fieldDefault,
         _StakeDelegationCert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StakeDelegationCert
          -> Data.ProtoLens.Encoding.Bytes.Parser StakeDelegationCert
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stake_credential"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stakeCredential") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "pool_keyhash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"poolKeyhash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StakeDelegationCert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'stakeCredential") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"poolKeyhash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StakeDelegationCert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StakeDelegationCert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StakeDelegationCert'stakeCredential x__)
                (Control.DeepSeq.deepseq
                   (_StakeDelegationCert'poolKeyhash x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.inputs' @:: Lens' Tx [TxInput]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'inputs' @:: Lens' Tx (Data.Vector.Vector TxInput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.outputs' @:: Lens' Tx [TxOutput]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'outputs' @:: Lens' Tx (Data.Vector.Vector TxOutput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.certificates' @:: Lens' Tx [Certificate]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'certificates' @:: Lens' Tx (Data.Vector.Vector Certificate)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.withdrawals' @:: Lens' Tx [Withdrawal]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'withdrawals' @:: Lens' Tx (Data.Vector.Vector Withdrawal)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.mint' @:: Lens' Tx [Multiasset]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'mint' @:: Lens' Tx (Data.Vector.Vector Multiasset)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.referenceInputs' @:: Lens' Tx [TxInput]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'referenceInputs' @:: Lens' Tx (Data.Vector.Vector TxInput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.witnesses' @:: Lens' Tx WitnessSet@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'witnesses' @:: Lens' Tx (Prelude.Maybe WitnessSet)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.collateral' @:: Lens' Tx Collateral@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'collateral' @:: Lens' Tx (Prelude.Maybe Collateral)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.fee' @:: Lens' Tx Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.validity' @:: Lens' Tx TxValidity@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'validity' @:: Lens' Tx (Prelude.Maybe TxValidity)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.successful' @:: Lens' Tx Prelude.Bool@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.auxiliary' @:: Lens' Tx AuxData@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'auxiliary' @:: Lens' Tx (Prelude.Maybe AuxData)@ -}
data Tx
  = Tx'_constructor {_Tx'inputs :: !(Data.Vector.Vector TxInput),
                     _Tx'outputs :: !(Data.Vector.Vector TxOutput),
                     _Tx'certificates :: !(Data.Vector.Vector Certificate),
                     _Tx'withdrawals :: !(Data.Vector.Vector Withdrawal),
                     _Tx'mint :: !(Data.Vector.Vector Multiasset),
                     _Tx'referenceInputs :: !(Data.Vector.Vector TxInput),
                     _Tx'witnesses :: !(Prelude.Maybe WitnessSet),
                     _Tx'collateral :: !(Prelude.Maybe Collateral),
                     _Tx'fee :: !Data.Word.Word64,
                     _Tx'validity :: !(Prelude.Maybe TxValidity),
                     _Tx'successful :: !Prelude.Bool,
                     _Tx'auxiliary :: !(Prelude.Maybe AuxData),
                     _Tx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tx "inputs" [TxInput] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'inputs (\ x__ y__ -> x__ {_Tx'inputs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'inputs" (Data.Vector.Vector TxInput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'inputs (\ x__ y__ -> x__ {_Tx'inputs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "outputs" [TxOutput] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'outputs (\ x__ y__ -> x__ {_Tx'outputs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'outputs" (Data.Vector.Vector TxOutput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'outputs (\ x__ y__ -> x__ {_Tx'outputs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "certificates" [Certificate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'certificates (\ x__ y__ -> x__ {_Tx'certificates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'certificates" (Data.Vector.Vector Certificate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'certificates (\ x__ y__ -> x__ {_Tx'certificates = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "withdrawals" [Withdrawal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'withdrawals (\ x__ y__ -> x__ {_Tx'withdrawals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'withdrawals" (Data.Vector.Vector Withdrawal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'withdrawals (\ x__ y__ -> x__ {_Tx'withdrawals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "mint" [Multiasset] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'mint (\ x__ y__ -> x__ {_Tx'mint = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'mint" (Data.Vector.Vector Multiasset) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'mint (\ x__ y__ -> x__ {_Tx'mint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "referenceInputs" [TxInput] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'referenceInputs (\ x__ y__ -> x__ {_Tx'referenceInputs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'referenceInputs" (Data.Vector.Vector TxInput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'referenceInputs (\ x__ y__ -> x__ {_Tx'referenceInputs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "witnesses" WitnessSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'witnesses (\ x__ y__ -> x__ {_Tx'witnesses = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'witnesses" (Prelude.Maybe WitnessSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'witnesses (\ x__ y__ -> x__ {_Tx'witnesses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "collateral" Collateral where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'collateral (\ x__ y__ -> x__ {_Tx'collateral = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'collateral" (Prelude.Maybe Collateral) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'collateral (\ x__ y__ -> x__ {_Tx'collateral = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "fee" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'fee (\ x__ y__ -> x__ {_Tx'fee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "validity" TxValidity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'validity (\ x__ y__ -> x__ {_Tx'validity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'validity" (Prelude.Maybe TxValidity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'validity (\ x__ y__ -> x__ {_Tx'validity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "successful" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'successful (\ x__ y__ -> x__ {_Tx'successful = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "auxiliary" AuxData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'auxiliary (\ x__ y__ -> x__ {_Tx'auxiliary = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'auxiliary" (Prelude.Maybe AuxData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'auxiliary (\ x__ y__ -> x__ {_Tx'auxiliary = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tx where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Tx"
  packedMessageDescriptor _
    = "\n\
      \\STXTx\DC28\n\
      \\ACKinputs\CAN\SOH \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\ACKinputs\DC2;\n\
      \\aoutputs\CAN\STX \ETX(\v2!.utxorpc.v1alpha.cardano.TxOutputR\aoutputs\DC2H\n\
      \\fcertificates\CAN\ETX \ETX(\v2$.utxorpc.v1alpha.cardano.CertificateR\fcertificates\DC2E\n\
      \\vwithdrawals\CAN\EOT \ETX(\v2#.utxorpc.v1alpha.cardano.WithdrawalR\vwithdrawals\DC27\n\
      \\EOTmint\CAN\ENQ \ETX(\v2#.utxorpc.v1alpha.cardano.MultiassetR\EOTmint\DC2K\n\
      \\DLEreference_inputs\CAN\ACK \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\SIreferenceInputs\DC2A\n\
      \\twitnesses\CAN\a \SOH(\v2#.utxorpc.v1alpha.cardano.WitnessSetR\twitnesses\DC2C\n\
      \\n\
      \collateral\CAN\b \SOH(\v2#.utxorpc.v1alpha.cardano.CollateralR\n\
      \collateral\DC2\DLE\n\
      \\ETXfee\CAN\t \SOH(\EOTR\ETXfee\DC2?\n\
      \\bvalidity\CAN\n\
      \ \SOH(\v2#.utxorpc.v1alpha.cardano.TxValidityR\bvalidity\DC2\RS\n\
      \\n\
      \successful\CAN\v \SOH(\bR\n\
      \successful\DC2>\n\
      \\tauxiliary\CAN\f \SOH(\v2 .utxorpc.v1alpha.cardano.AuxDataR\tauxiliary"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inputs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inputs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxInput)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"inputs")) ::
              Data.ProtoLens.FieldDescriptor Tx
        outputs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outputs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxOutput)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"outputs")) ::
              Data.ProtoLens.FieldDescriptor Tx
        certificates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Certificate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"certificates")) ::
              Data.ProtoLens.FieldDescriptor Tx
        withdrawals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withdrawals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Withdrawal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"withdrawals")) ::
              Data.ProtoLens.FieldDescriptor Tx
        mint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Multiasset)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"mint")) ::
              Data.ProtoLens.FieldDescriptor Tx
        referenceInputs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_inputs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxInput)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"referenceInputs")) ::
              Data.ProtoLens.FieldDescriptor Tx
        witnesses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "witnesses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WitnessSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'witnesses")) ::
              Data.ProtoLens.FieldDescriptor Tx
        collateral__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collateral"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Collateral)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'collateral")) ::
              Data.ProtoLens.FieldDescriptor Tx
        fee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fee")) ::
              Data.ProtoLens.FieldDescriptor Tx
        validity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxValidity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validity")) ::
              Data.ProtoLens.FieldDescriptor Tx
        successful__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "successful"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"successful")) ::
              Data.ProtoLens.FieldDescriptor Tx
        auxiliary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auxiliary"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuxData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'auxiliary")) ::
              Data.ProtoLens.FieldDescriptor Tx
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inputs__field_descriptor),
           (Data.ProtoLens.Tag 2, outputs__field_descriptor),
           (Data.ProtoLens.Tag 3, certificates__field_descriptor),
           (Data.ProtoLens.Tag 4, withdrawals__field_descriptor),
           (Data.ProtoLens.Tag 5, mint__field_descriptor),
           (Data.ProtoLens.Tag 6, referenceInputs__field_descriptor),
           (Data.ProtoLens.Tag 7, witnesses__field_descriptor),
           (Data.ProtoLens.Tag 8, collateral__field_descriptor),
           (Data.ProtoLens.Tag 9, fee__field_descriptor),
           (Data.ProtoLens.Tag 10, validity__field_descriptor),
           (Data.ProtoLens.Tag 11, successful__field_descriptor),
           (Data.ProtoLens.Tag 12, auxiliary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tx'_unknownFields (\ x__ y__ -> x__ {_Tx'_unknownFields = y__})
  defMessage
    = Tx'_constructor
        {_Tx'inputs = Data.Vector.Generic.empty,
         _Tx'outputs = Data.Vector.Generic.empty,
         _Tx'certificates = Data.Vector.Generic.empty,
         _Tx'withdrawals = Data.Vector.Generic.empty,
         _Tx'mint = Data.Vector.Generic.empty,
         _Tx'referenceInputs = Data.Vector.Generic.empty,
         _Tx'witnesses = Prelude.Nothing, _Tx'collateral = Prelude.Nothing,
         _Tx'fee = Data.ProtoLens.fieldDefault,
         _Tx'validity = Prelude.Nothing,
         _Tx'successful = Data.ProtoLens.fieldDefault,
         _Tx'auxiliary = Prelude.Nothing, _Tx'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Tx
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Certificate
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxInput
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Multiasset
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxOutput
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxInput
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Withdrawal
                            -> Data.ProtoLens.Encoding.Bytes.Parser Tx
        loop
          x
          mutable'certificates
          mutable'inputs
          mutable'mint
          mutable'outputs
          mutable'referenceInputs
          mutable'withdrawals
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'certificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'certificates)
                      frozen'inputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'inputs)
                      frozen'mint <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'mint)
                      frozen'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'outputs)
                      frozen'referenceInputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'referenceInputs)
                      frozen'withdrawals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'withdrawals)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'certificates")
                              frozen'certificates
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'inputs") frozen'inputs
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'mint") frozen'mint
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'outputs") frozen'outputs
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'referenceInputs")
                                          frozen'referenceInputs
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'withdrawals")
                                             frozen'withdrawals x)))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "inputs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'inputs y)
                                loop
                                  x mutable'certificates v mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outputs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'outputs y)
                                loop
                                  x mutable'certificates mutable'inputs mutable'mint v
                                  mutable'referenceInputs mutable'withdrawals
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "certificates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'certificates y)
                                loop
                                  x v mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "withdrawals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'withdrawals y)
                                loop
                                  x mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs v
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mint"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'mint y)
                                loop
                                  x mutable'certificates mutable'inputs v mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "reference_inputs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'referenceInputs y)
                                loop
                                  x mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  v mutable'withdrawals
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "witnesses"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"witnesses") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "collateral"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"collateral") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fee") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validity") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "successful"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"successful") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "auxiliary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"auxiliary") y x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'certificates mutable'inputs mutable'mint mutable'outputs
                                  mutable'referenceInputs mutable'withdrawals
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'certificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'inputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'mint <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              mutable'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'referenceInputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'withdrawals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'certificates mutable'inputs
                mutable'mint mutable'outputs mutable'referenceInputs
                mutable'withdrawals)
          "Tx"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'inputs") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'outputs") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'certificates") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'withdrawals") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'mint") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'referenceInputs") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'witnesses") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'collateral") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view (Data.ProtoLens.Field.field @"fee") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'validity") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"successful") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (\ b -> if b then 1 else 0) _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'auxiliary")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData Tx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tx'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Tx'inputs x__)
                (Control.DeepSeq.deepseq
                   (_Tx'outputs x__)
                   (Control.DeepSeq.deepseq
                      (_Tx'certificates x__)
                      (Control.DeepSeq.deepseq
                         (_Tx'withdrawals x__)
                         (Control.DeepSeq.deepseq
                            (_Tx'mint x__)
                            (Control.DeepSeq.deepseq
                               (_Tx'referenceInputs x__)
                               (Control.DeepSeq.deepseq
                                  (_Tx'witnesses x__)
                                  (Control.DeepSeq.deepseq
                                     (_Tx'collateral x__)
                                     (Control.DeepSeq.deepseq
                                        (_Tx'fee x__)
                                        (Control.DeepSeq.deepseq
                                           (_Tx'validity x__)
                                           (Control.DeepSeq.deepseq
                                              (_Tx'successful x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Tx'auxiliary x__) ()))))))))))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.txHash' @:: Lens' TxInput Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.outputIndex' @:: Lens' TxInput Data.Word.Word32@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.asOutput' @:: Lens' TxInput TxOutput@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'asOutput' @:: Lens' TxInput (Prelude.Maybe TxOutput)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.redeemer' @:: Lens' TxInput Redeemer@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'redeemer' @:: Lens' TxInput (Prelude.Maybe Redeemer)@ -}
data TxInput
  = TxInput'_constructor {_TxInput'txHash :: !Data.ByteString.ByteString,
                          _TxInput'outputIndex :: !Data.Word.Word32,
                          _TxInput'asOutput :: !(Prelude.Maybe TxOutput),
                          _TxInput'redeemer :: !(Prelude.Maybe Redeemer),
                          _TxInput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxInput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxInput "txHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'txHash (\ x__ y__ -> x__ {_TxInput'txHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxInput "outputIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'outputIndex
           (\ x__ y__ -> x__ {_TxInput'outputIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxInput "asOutput" TxOutput where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'asOutput (\ x__ y__ -> x__ {_TxInput'asOutput = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxInput "maybe'asOutput" (Prelude.Maybe TxOutput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'asOutput (\ x__ y__ -> x__ {_TxInput'asOutput = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxInput "redeemer" Redeemer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'redeemer (\ x__ y__ -> x__ {_TxInput'redeemer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxInput "maybe'redeemer" (Prelude.Maybe Redeemer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInput'redeemer (\ x__ y__ -> x__ {_TxInput'redeemer = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxInput where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.TxInput"
  packedMessageDescriptor _
    = "\n\
      \\aTxInput\DC2\ETB\n\
      \\atx_hash\CAN\SOH \SOH(\fR\ACKtxHash\DC2!\n\
      \\foutput_index\CAN\STX \SOH(\rR\voutputIndex\DC2>\n\
      \\tas_output\CAN\ETX \SOH(\v2!.utxorpc.v1alpha.cardano.TxOutputR\basOutput\DC2=\n\
      \\bredeemer\CAN\EOT \SOH(\v2!.utxorpc.v1alpha.cardano.RedeemerR\bredeemer"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txHash")) ::
              Data.ProtoLens.FieldDescriptor TxInput
        outputIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "output_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"outputIndex")) ::
              Data.ProtoLens.FieldDescriptor TxInput
        asOutput__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "as_output"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxOutput)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asOutput")) ::
              Data.ProtoLens.FieldDescriptor TxInput
        redeemer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redeemer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Redeemer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redeemer")) ::
              Data.ProtoLens.FieldDescriptor TxInput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txHash__field_descriptor),
           (Data.ProtoLens.Tag 2, outputIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, asOutput__field_descriptor),
           (Data.ProtoLens.Tag 4, redeemer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxInput'_unknownFields
        (\ x__ y__ -> x__ {_TxInput'_unknownFields = y__})
  defMessage
    = TxInput'_constructor
        {_TxInput'txHash = Data.ProtoLens.fieldDefault,
         _TxInput'outputIndex = Data.ProtoLens.fieldDefault,
         _TxInput'asOutput = Prelude.Nothing,
         _TxInput'redeemer = Prelude.Nothing, _TxInput'_unknownFields = []}
  parseMessage
    = let
        loop :: TxInput -> Data.ProtoLens.Encoding.Bytes.Parser TxInput
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txHash") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "output_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"outputIndex") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "as_output"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asOutput") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "redeemer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"redeemer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxInput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txHash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"outputIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'asOutput") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'redeemer") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TxInput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxInput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxInput'txHash x__)
                (Control.DeepSeq.deepseq
                   (_TxInput'outputIndex x__)
                   (Control.DeepSeq.deepseq
                      (_TxInput'asOutput x__)
                      (Control.DeepSeq.deepseq (_TxInput'redeemer x__) ()))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.address' @:: Lens' TxOutput Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.coin' @:: Lens' TxOutput Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.assets' @:: Lens' TxOutput [Multiasset]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'assets' @:: Lens' TxOutput (Data.Vector.Vector Multiasset)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.datum' @:: Lens' TxOutput PlutusData@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'datum' @:: Lens' TxOutput (Prelude.Maybe PlutusData)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.datumHash' @:: Lens' TxOutput Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.script' @:: Lens' TxOutput Script@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'script' @:: Lens' TxOutput (Prelude.Maybe Script)@ -}
data TxOutput
  = TxOutput'_constructor {_TxOutput'address :: !Data.ByteString.ByteString,
                           _TxOutput'coin :: !Data.Word.Word64,
                           _TxOutput'assets :: !(Data.Vector.Vector Multiasset),
                           _TxOutput'datum :: !(Prelude.Maybe PlutusData),
                           _TxOutput'datumHash :: !Data.ByteString.ByteString,
                           _TxOutput'script :: !(Prelude.Maybe Script),
                           _TxOutput'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxOutput where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxOutput "address" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'address (\ x__ y__ -> x__ {_TxOutput'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxOutput "coin" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'coin (\ x__ y__ -> x__ {_TxOutput'coin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxOutput "assets" [Multiasset] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'assets (\ x__ y__ -> x__ {_TxOutput'assets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxOutput "vec'assets" (Data.Vector.Vector Multiasset) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'assets (\ x__ y__ -> x__ {_TxOutput'assets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxOutput "datum" PlutusData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'datum (\ x__ y__ -> x__ {_TxOutput'datum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxOutput "maybe'datum" (Prelude.Maybe PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'datum (\ x__ y__ -> x__ {_TxOutput'datum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxOutput "datumHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'datumHash (\ x__ y__ -> x__ {_TxOutput'datumHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxOutput "script" Script where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'script (\ x__ y__ -> x__ {_TxOutput'script = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxOutput "maybe'script" (Prelude.Maybe Script) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxOutput'script (\ x__ y__ -> x__ {_TxOutput'script = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxOutput where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.TxOutput"
  packedMessageDescriptor _
    = "\n\
      \\bTxOutput\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2\DC2\n\
      \\EOTcoin\CAN\STX \SOH(\EOTR\EOTcoin\DC2;\n\
      \\ACKassets\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.MultiassetR\ACKassets\DC29\n\
      \\ENQdatum\CAN\EOT \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQdatum\DC2\GS\n\
      \\n\
      \datum_hash\CAN\ENQ \SOH(\fR\tdatumHash\DC27\n\
      \\ACKscript\CAN\ACK \SOH(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ACKscript"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
        coin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"coin")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
        assets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "assets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Multiasset)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"assets")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
        datum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "datum"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'datum")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
        datumHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "datum_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"datumHash")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
        script__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Script)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'script")) ::
              Data.ProtoLens.FieldDescriptor TxOutput
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, coin__field_descriptor),
           (Data.ProtoLens.Tag 3, assets__field_descriptor),
           (Data.ProtoLens.Tag 4, datum__field_descriptor),
           (Data.ProtoLens.Tag 5, datumHash__field_descriptor),
           (Data.ProtoLens.Tag 6, script__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxOutput'_unknownFields
        (\ x__ y__ -> x__ {_TxOutput'_unknownFields = y__})
  defMessage
    = TxOutput'_constructor
        {_TxOutput'address = Data.ProtoLens.fieldDefault,
         _TxOutput'coin = Data.ProtoLens.fieldDefault,
         _TxOutput'assets = Data.Vector.Generic.empty,
         _TxOutput'datum = Prelude.Nothing,
         _TxOutput'datumHash = Data.ProtoLens.fieldDefault,
         _TxOutput'script = Prelude.Nothing, _TxOutput'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxOutput
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Multiasset
             -> Data.ProtoLens.Encoding.Bytes.Parser TxOutput
        loop x mutable'assets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'assets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'assets)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'assets") frozen'assets x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'assets
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "coin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"coin") y x)
                                  mutable'assets
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "assets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'assets y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "datum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"datum") y x)
                                  mutable'assets
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "datum_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"datumHash") y x)
                                  mutable'assets
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "script"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"script") y x)
                                  mutable'assets
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'assets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'assets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'assets)
          "TxOutput"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"coin") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'assets") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'datum") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"datumHash") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'script") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TxOutput where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxOutput'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxOutput'address x__)
                (Control.DeepSeq.deepseq
                   (_TxOutput'coin x__)
                   (Control.DeepSeq.deepseq
                      (_TxOutput'assets x__)
                      (Control.DeepSeq.deepseq
                         (_TxOutput'datum x__)
                         (Control.DeepSeq.deepseq
                            (_TxOutput'datumHash x__)
                            (Control.DeepSeq.deepseq (_TxOutput'script x__) ()))))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'txPattern' @:: Lens' TxPattern (Prelude.Maybe TxPattern'TxPattern)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'anyOutput' @:: Lens' TxPattern (Prelude.Maybe OutputPattern)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.anyOutput' @:: Lens' TxPattern OutputPattern@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'anyAddress' @:: Lens' TxPattern (Prelude.Maybe AddressPattern)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.anyAddress' @:: Lens' TxPattern AddressPattern@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'anyAsset' @:: Lens' TxPattern (Prelude.Maybe AssetPattern)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.anyAsset' @:: Lens' TxPattern AssetPattern@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.maybe'anyDatum' @:: Lens' TxPattern (Prelude.Maybe DatumPattern)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.anyDatum' @:: Lens' TxPattern DatumPattern@ -}
data TxPattern
  = TxPattern'_constructor {_TxPattern'txPattern :: !(Prelude.Maybe TxPattern'TxPattern),
                            _TxPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TxPattern'TxPattern
  = TxPattern'AnyOutput !OutputPattern |
    TxPattern'AnyAddress !AddressPattern |
    TxPattern'AnyAsset !AssetPattern |
    TxPattern'AnyDatum !DatumPattern
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TxPattern "maybe'txPattern" (Prelude.Maybe TxPattern'TxPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxPattern "maybe'anyOutput" (Prelude.Maybe OutputPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TxPattern'AnyOutput x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TxPattern'AnyOutput y__))
instance Data.ProtoLens.Field.HasField TxPattern "anyOutput" OutputPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TxPattern'AnyOutput x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TxPattern'AnyOutput y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TxPattern "maybe'anyAddress" (Prelude.Maybe AddressPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TxPattern'AnyAddress x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TxPattern'AnyAddress y__))
instance Data.ProtoLens.Field.HasField TxPattern "anyAddress" AddressPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TxPattern'AnyAddress x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TxPattern'AnyAddress y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TxPattern "maybe'anyAsset" (Prelude.Maybe AssetPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TxPattern'AnyAsset x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TxPattern'AnyAsset y__))
instance Data.ProtoLens.Field.HasField TxPattern "anyAsset" AssetPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TxPattern'AnyAsset x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TxPattern'AnyAsset y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TxPattern "maybe'anyDatum" (Prelude.Maybe DatumPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TxPattern'AnyDatum x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TxPattern'AnyDatum y__))
instance Data.ProtoLens.Field.HasField TxPattern "anyDatum" DatumPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPattern'txPattern
           (\ x__ y__ -> x__ {_TxPattern'txPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TxPattern'AnyDatum x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TxPattern'AnyDatum y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message TxPattern where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.TxPattern"
  packedMessageDescriptor _
    = "\n\
      \\tTxPattern\DC2G\n\
      \\n\
      \any_output\CAN\SOH \SOH(\v2&.utxorpc.v1alpha.cardano.OutputPatternH\NULR\tanyOutput\DC2J\n\
      \\vany_address\CAN\STX \SOH(\v2'.utxorpc.v1alpha.cardano.AddressPatternH\NULR\n\
      \anyAddress\DC2D\n\
      \\tany_asset\CAN\ETX \SOH(\v2%.utxorpc.v1alpha.cardano.AssetPatternH\NULR\banyAsset\DC2D\n\
      \\tany_datum\CAN\EOT \SOH(\v2%.utxorpc.v1alpha.cardano.DatumPatternH\NULR\banyDatumB\f\n\
      \\n\
      \tx_pattern"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        anyOutput__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_output"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OutputPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyOutput")) ::
              Data.ProtoLens.FieldDescriptor TxPattern
        anyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AddressPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyAddress")) ::
              Data.ProtoLens.FieldDescriptor TxPattern
        anyAsset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_asset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AssetPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyAsset")) ::
              Data.ProtoLens.FieldDescriptor TxPattern
        anyDatum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_datum"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DatumPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyDatum")) ::
              Data.ProtoLens.FieldDescriptor TxPattern
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, anyOutput__field_descriptor),
           (Data.ProtoLens.Tag 2, anyAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, anyAsset__field_descriptor),
           (Data.ProtoLens.Tag 4, anyDatum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxPattern'_unknownFields
        (\ x__ y__ -> x__ {_TxPattern'_unknownFields = y__})
  defMessage
    = TxPattern'_constructor
        {_TxPattern'txPattern = Prelude.Nothing,
         _TxPattern'_unknownFields = []}
  parseMessage
    = let
        loop :: TxPattern -> Data.ProtoLens.Encoding.Bytes.Parser TxPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "any_output"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyOutput") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "any_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyAddress") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "any_asset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyAsset") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "any_datum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyDatum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxPattern"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'txPattern") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (TxPattern'AnyOutput v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (TxPattern'AnyAddress v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (TxPattern'AnyAsset v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (TxPattern'AnyDatum v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxPattern'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxPattern'txPattern x__) ())
instance Control.DeepSeq.NFData TxPattern'TxPattern where
  rnf (TxPattern'AnyOutput x__) = Control.DeepSeq.rnf x__
  rnf (TxPattern'AnyAddress x__) = Control.DeepSeq.rnf x__
  rnf (TxPattern'AnyAsset x__) = Control.DeepSeq.rnf x__
  rnf (TxPattern'AnyDatum x__) = Control.DeepSeq.rnf x__
_TxPattern'AnyOutput ::
  Data.ProtoLens.Prism.Prism' TxPattern'TxPattern OutputPattern
_TxPattern'AnyOutput
  = Data.ProtoLens.Prism.prism'
      TxPattern'AnyOutput
      (\ p__
         -> case p__ of
              (TxPattern'AnyOutput p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TxPattern'AnyAddress ::
  Data.ProtoLens.Prism.Prism' TxPattern'TxPattern AddressPattern
_TxPattern'AnyAddress
  = Data.ProtoLens.Prism.prism'
      TxPattern'AnyAddress
      (\ p__
         -> case p__ of
              (TxPattern'AnyAddress p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TxPattern'AnyAsset ::
  Data.ProtoLens.Prism.Prism' TxPattern'TxPattern AssetPattern
_TxPattern'AnyAsset
  = Data.ProtoLens.Prism.prism'
      TxPattern'AnyAsset
      (\ p__
         -> case p__ of
              (TxPattern'AnyAsset p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TxPattern'AnyDatum ::
  Data.ProtoLens.Prism.Prism' TxPattern'TxPattern DatumPattern
_TxPattern'AnyDatum
  = Data.ProtoLens.Prism.prism'
      TxPattern'AnyDatum
      (\ p__
         -> case p__ of
              (TxPattern'AnyDatum p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.start' @:: Lens' TxValidity Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.ttl' @:: Lens' TxValidity Data.Word.Word64@ -}
data TxValidity
  = TxValidity'_constructor {_TxValidity'start :: !Data.Word.Word64,
                             _TxValidity'ttl :: !Data.Word.Word64,
                             _TxValidity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxValidity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxValidity "start" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxValidity'start (\ x__ y__ -> x__ {_TxValidity'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxValidity "ttl" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxValidity'ttl (\ x__ y__ -> x__ {_TxValidity'ttl = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxValidity where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.TxValidity"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TxValidity\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\EOTR\ENQstart\DC2\DLE\n\
      \\ETXttl\CAN\STX \SOH(\EOTR\ETXttl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor TxValidity
        ttl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ttl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"ttl")) ::
              Data.ProtoLens.FieldDescriptor TxValidity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, ttl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxValidity'_unknownFields
        (\ x__ y__ -> x__ {_TxValidity'_unknownFields = y__})
  defMessage
    = TxValidity'_constructor
        {_TxValidity'start = Data.ProtoLens.fieldDefault,
         _TxValidity'ttl = Data.ProtoLens.fieldDefault,
         _TxValidity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxValidity -> Data.ProtoLens.Encoding.Bytes.Parser TxValidity
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ttl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ttl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxValidity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ttl") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TxValidity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxValidity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxValidity'start x__)
                (Control.DeepSeq.deepseq (_TxValidity'ttl x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vkey' @:: Lens' VKeyWitness Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.signature' @:: Lens' VKeyWitness Data.ByteString.ByteString@ -}
data VKeyWitness
  = VKeyWitness'_constructor {_VKeyWitness'vkey :: !Data.ByteString.ByteString,
                              _VKeyWitness'signature :: !Data.ByteString.ByteString,
                              _VKeyWitness'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VKeyWitness where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VKeyWitness "vkey" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VKeyWitness'vkey (\ x__ y__ -> x__ {_VKeyWitness'vkey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VKeyWitness "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VKeyWitness'signature
           (\ x__ y__ -> x__ {_VKeyWitness'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Message VKeyWitness where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.cardano.VKeyWitness"
  packedMessageDescriptor _
    = "\n\
      \\vVKeyWitness\DC2\DC2\n\
      \\EOTvkey\CAN\SOH \SOH(\fR\EOTvkey\DC2\FS\n\
      \\tsignature\CAN\STX \SOH(\fR\tsignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vkey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vkey"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"vkey")) ::
              Data.ProtoLens.FieldDescriptor VKeyWitness
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor VKeyWitness
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, vkey__field_descriptor),
           (Data.ProtoLens.Tag 2, signature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VKeyWitness'_unknownFields
        (\ x__ y__ -> x__ {_VKeyWitness'_unknownFields = y__})
  defMessage
    = VKeyWitness'_constructor
        {_VKeyWitness'vkey = Data.ProtoLens.fieldDefault,
         _VKeyWitness'signature = Data.ProtoLens.fieldDefault,
         _VKeyWitness'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VKeyWitness -> Data.ProtoLens.Encoding.Bytes.Parser VKeyWitness
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vkey"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vkey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VKeyWitness"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"vkey") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"signature") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData VKeyWitness where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VKeyWitness'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VKeyWitness'vkey x__)
                (Control.DeepSeq.deepseq (_VKeyWitness'signature x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.rewardAccount' @:: Lens' Withdrawal Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.coin' @:: Lens' Withdrawal Data.Word.Word64@ -}
data Withdrawal
  = Withdrawal'_constructor {_Withdrawal'rewardAccount :: !Data.ByteString.ByteString,
                             _Withdrawal'coin :: !Data.Word.Word64,
                             _Withdrawal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Withdrawal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Withdrawal "rewardAccount" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Withdrawal'rewardAccount
           (\ x__ y__ -> x__ {_Withdrawal'rewardAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Withdrawal "coin" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Withdrawal'coin (\ x__ y__ -> x__ {_Withdrawal'coin = y__}))
        Prelude.id
instance Data.ProtoLens.Message Withdrawal where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.Withdrawal"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Withdrawal\DC2%\n\
      \\SOreward_account\CAN\SOH \SOH(\fR\rrewardAccount\DC2\DC2\n\
      \\EOTcoin\CAN\STX \SOH(\EOTR\EOTcoin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewardAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward_account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rewardAccount")) ::
              Data.ProtoLens.FieldDescriptor Withdrawal
        coin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"coin")) ::
              Data.ProtoLens.FieldDescriptor Withdrawal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewardAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, coin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Withdrawal'_unknownFields
        (\ x__ y__ -> x__ {_Withdrawal'_unknownFields = y__})
  defMessage
    = Withdrawal'_constructor
        {_Withdrawal'rewardAccount = Data.ProtoLens.fieldDefault,
         _Withdrawal'coin = Data.ProtoLens.fieldDefault,
         _Withdrawal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Withdrawal -> Data.ProtoLens.Encoding.Bytes.Parser Withdrawal
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "reward_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rewardAccount") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "coin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"coin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Withdrawal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"rewardAccount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"coin") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Withdrawal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Withdrawal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Withdrawal'rewardAccount x__)
                (Control.DeepSeq.deepseq (_Withdrawal'coin x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vkeywitness' @:: Lens' WitnessSet [VKeyWitness]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'vkeywitness' @:: Lens' WitnessSet (Data.Vector.Vector VKeyWitness)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.script' @:: Lens' WitnessSet [Script]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'script' @:: Lens' WitnessSet (Data.Vector.Vector Script)@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.plutusDatums' @:: Lens' WitnessSet [PlutusData]@
         * 'Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields.vec'plutusDatums' @:: Lens' WitnessSet (Data.Vector.Vector PlutusData)@ -}
data WitnessSet
  = WitnessSet'_constructor {_WitnessSet'vkeywitness :: !(Data.Vector.Vector VKeyWitness),
                             _WitnessSet'script :: !(Data.Vector.Vector Script),
                             _WitnessSet'plutusDatums :: !(Data.Vector.Vector PlutusData),
                             _WitnessSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WitnessSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WitnessSet "vkeywitness" [VKeyWitness] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'vkeywitness
           (\ x__ y__ -> x__ {_WitnessSet'vkeywitness = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WitnessSet "vec'vkeywitness" (Data.Vector.Vector VKeyWitness) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'vkeywitness
           (\ x__ y__ -> x__ {_WitnessSet'vkeywitness = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WitnessSet "script" [Script] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'script (\ x__ y__ -> x__ {_WitnessSet'script = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WitnessSet "vec'script" (Data.Vector.Vector Script) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'script (\ x__ y__ -> x__ {_WitnessSet'script = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WitnessSet "plutusDatums" [PlutusData] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'plutusDatums
           (\ x__ y__ -> x__ {_WitnessSet'plutusDatums = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WitnessSet "vec'plutusDatums" (Data.Vector.Vector PlutusData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WitnessSet'plutusDatums
           (\ x__ y__ -> x__ {_WitnessSet'plutusDatums = y__}))
        Prelude.id
instance Data.ProtoLens.Message WitnessSet where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.cardano.WitnessSet"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \WitnessSet\DC2F\n\
      \\vvkeywitness\CAN\SOH \ETX(\v2$.utxorpc.v1alpha.cardano.VKeyWitnessR\vvkeywitness\DC27\n\
      \\ACKscript\CAN\STX \ETX(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ACKscript\DC2H\n\
      \\rplutus_datums\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\fplutusDatums"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vkeywitness__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vkeywitness"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VKeyWitness)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"vkeywitness")) ::
              Data.ProtoLens.FieldDescriptor WitnessSet
        script__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "script"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Script)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"script")) ::
              Data.ProtoLens.FieldDescriptor WitnessSet
        plutusDatums__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plutus_datums"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PlutusData)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"plutusDatums")) ::
              Data.ProtoLens.FieldDescriptor WitnessSet
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, vkeywitness__field_descriptor),
           (Data.ProtoLens.Tag 2, script__field_descriptor),
           (Data.ProtoLens.Tag 3, plutusDatums__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WitnessSet'_unknownFields
        (\ x__ y__ -> x__ {_WitnessSet'_unknownFields = y__})
  defMessage
    = WitnessSet'_constructor
        {_WitnessSet'vkeywitness = Data.Vector.Generic.empty,
         _WitnessSet'script = Data.Vector.Generic.empty,
         _WitnessSet'plutusDatums = Data.Vector.Generic.empty,
         _WitnessSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WitnessSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PlutusData
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Script
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld VKeyWitness
                   -> Data.ProtoLens.Encoding.Bytes.Parser WitnessSet
        loop x mutable'plutusDatums mutable'script mutable'vkeywitness
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'plutusDatums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'plutusDatums)
                      frozen'script <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'script)
                      frozen'vkeywitness <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'vkeywitness)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'plutusDatums")
                              frozen'plutusDatums
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'script") frozen'script
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'vkeywitness")
                                    frozen'vkeywitness x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "vkeywitness"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'vkeywitness y)
                                loop x mutable'plutusDatums mutable'script v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "script"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'script y)
                                loop x mutable'plutusDatums v mutable'vkeywitness
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "plutus_datums"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'plutusDatums y)
                                loop x v mutable'script mutable'vkeywitness
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'plutusDatums mutable'script mutable'vkeywitness
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'plutusDatums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'script <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'vkeywitness <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'plutusDatums mutable'script
                mutable'vkeywitness)
          "WitnessSet"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'vkeywitness") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'script") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'plutusDatums") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData WitnessSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WitnessSet'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WitnessSet'vkeywitness x__)
                (Control.DeepSeq.deepseq
                   (_WitnessSet'script x__)
                   (Control.DeepSeq.deepseq (_WitnessSet'plutusDatums x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%utxorpc/v1alpha/cardano/cardano.proto\DC2\ETButxorpc.v1alpha.cardano\"\137\SOH\n\
    \\bRedeemer\DC2B\n\
    \\apurpose\CAN\SOH \SOH(\SO2(.utxorpc.v1alpha.cardano.RedeemerPurposeR\apurpose\DC29\n\
    \\ENQdatum\CAN\STX \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQdatum\"\196\SOH\n\
    \\aTxInput\DC2\ETB\n\
    \\atx_hash\CAN\SOH \SOH(\fR\ACKtxHash\DC2!\n\
    \\foutput_index\CAN\STX \SOH(\rR\voutputIndex\DC2>\n\
    \\tas_output\CAN\ETX \SOH(\v2!.utxorpc.v1alpha.cardano.TxOutputR\basOutput\DC2=\n\
    \\bredeemer\CAN\EOT \SOH(\v2!.utxorpc.v1alpha.cardano.RedeemerR\bredeemer\"\136\STX\n\
    \\bTxOutput\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2\DC2\n\
    \\EOTcoin\CAN\STX \SOH(\EOTR\EOTcoin\DC2;\n\
    \\ACKassets\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.MultiassetR\ACKassets\DC29\n\
    \\ENQdatum\CAN\EOT \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQdatum\DC2\GS\n\
    \\n\
    \datum_hash\CAN\ENQ \SOH(\fR\tdatumHash\DC27\n\
    \\ACKscript\CAN\ACK \SOH(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ACKscript\"Y\n\
    \\ENQAsset\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\fR\EOTname\DC2\US\n\
    \\voutput_coin\CAN\STX \SOH(\EOTR\n\
    \outputCoin\DC2\ESC\n\
    \\tmint_coin\CAN\ETX \SOH(\ETXR\bmintCoin\"a\n\
    \\n\
    \Multiasset\DC2\ESC\n\
    \\tpolicy_id\CAN\SOH \SOH(\fR\bpolicyId\DC26\n\
    \\ACKassets\CAN\STX \ETX(\v2\RS.utxorpc.v1alpha.cardano.AssetR\ACKassets\"4\n\
    \\n\
    \TxValidity\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\EOTR\ENQstart\DC2\DLE\n\
    \\ETXttl\CAN\STX \SOH(\EOTR\ETXttl\"\201\SOH\n\
    \\n\
    \Collateral\DC2@\n\
    \\n\
    \collateral\CAN\SOH \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\n\
    \collateral\DC2N\n\
    \\DC1collateral_return\CAN\STX \SOH(\v2!.utxorpc.v1alpha.cardano.TxOutputR\DLEcollateralReturn\DC2)\n\
    \\DLEtotal_collateral\CAN\ETX \SOH(\EOTR\SItotalCollateral\"G\n\
    \\n\
    \Withdrawal\DC2%\n\
    \\SOreward_account\CAN\SOH \SOH(\fR\rrewardAccount\DC2\DC2\n\
    \\EOTcoin\CAN\STX \SOH(\EOTR\EOTcoin\"\215\SOH\n\
    \\n\
    \WitnessSet\DC2F\n\
    \\vvkeywitness\CAN\SOH \ETX(\v2$.utxorpc.v1alpha.cardano.VKeyWitnessR\vvkeywitness\DC27\n\
    \\ACKscript\CAN\STX \ETX(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ACKscript\DC2H\n\
    \\rplutus_datums\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\fplutusDatums\"\131\SOH\n\
    \\aAuxData\DC2=\n\
    \\bmetadata\CAN\SOH \ETX(\v2!.utxorpc.v1alpha.cardano.MetadataR\bmetadata\DC29\n\
    \\ascripts\CAN\STX \ETX(\v2\US.utxorpc.v1alpha.cardano.ScriptR\ascripts\"\205\ENQ\n\
    \\STXTx\DC28\n\
    \\ACKinputs\CAN\SOH \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\ACKinputs\DC2;\n\
    \\aoutputs\CAN\STX \ETX(\v2!.utxorpc.v1alpha.cardano.TxOutputR\aoutputs\DC2H\n\
    \\fcertificates\CAN\ETX \ETX(\v2$.utxorpc.v1alpha.cardano.CertificateR\fcertificates\DC2E\n\
    \\vwithdrawals\CAN\EOT \ETX(\v2#.utxorpc.v1alpha.cardano.WithdrawalR\vwithdrawals\DC27\n\
    \\EOTmint\CAN\ENQ \ETX(\v2#.utxorpc.v1alpha.cardano.MultiassetR\EOTmint\DC2K\n\
    \\DLEreference_inputs\CAN\ACK \ETX(\v2 .utxorpc.v1alpha.cardano.TxInputR\SIreferenceInputs\DC2A\n\
    \\twitnesses\CAN\a \SOH(\v2#.utxorpc.v1alpha.cardano.WitnessSetR\twitnesses\DC2C\n\
    \\n\
    \collateral\CAN\b \SOH(\v2#.utxorpc.v1alpha.cardano.CollateralR\n\
    \collateral\DC2\DLE\n\
    \\ETXfee\CAN\t \SOH(\EOTR\ETXfee\DC2?\n\
    \\bvalidity\CAN\n\
    \ \SOH(\v2#.utxorpc.v1alpha.cardano.TxValidityR\bvalidity\DC2\RS\n\
    \\n\
    \successful\CAN\v \SOH(\bR\n\
    \successful\DC2>\n\
    \\tauxiliary\CAN\f \SOH(\v2 .utxorpc.v1alpha.cardano.AuxDataR\tauxiliary\"5\n\
    \\vBlockHeader\DC2\DC2\n\
    \\EOTslot\CAN\SOH \SOH(\EOTR\EOTslot\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\fR\EOThash\"8\n\
    \\tBlockBody\DC2+\n\
    \\STXtx\CAN\SOH \ETX(\v2\ESC.utxorpc.v1alpha.cardano.TxR\STXtx\"}\n\
    \\ENQBlock\DC2<\n\
    \\ACKheader\CAN\SOH \SOH(\v2$.utxorpc.v1alpha.cardano.BlockHeaderR\ACKheader\DC26\n\
    \\EOTbody\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.BlockBodyR\EOTbody\"?\n\
    \\vVKeyWitness\DC2\DC2\n\
    \\EOTvkey\CAN\SOH \SOH(\fR\EOTvkey\DC2\FS\n\
    \\tsignature\CAN\STX \SOH(\fR\tsignature\"\128\ETX\n\
    \\fNativeScript\DC2%\n\
    \\rscript_pubkey\CAN\SOH \SOH(\fH\NULR\fscriptPubkey\DC2J\n\
    \\n\
    \script_all\CAN\STX \SOH(\v2).utxorpc.v1alpha.cardano.NativeScriptListH\NULR\tscriptAll\DC2J\n\
    \\n\
    \script_any\CAN\ETX \SOH(\v2).utxorpc.v1alpha.cardano.NativeScriptListH\NULR\tscriptAny\DC2H\n\
    \\rscript_n_of_k\CAN\EOT \SOH(\v2#.utxorpc.v1alpha.cardano.ScriptNOfKH\NULR\n\
    \scriptNOfK\DC2'\n\
    \\SOinvalid_before\CAN\ENQ \SOH(\EOTH\NULR\rinvalidBefore\DC2-\n\
    \\DC1invalid_hereafter\CAN\ACK \SOH(\EOTH\NULR\DLEinvalidHereafterB\SI\n\
    \\rnative_script\"O\n\
    \\DLENativeScriptList\DC2;\n\
    \\ENQitems\CAN\SOH \ETX(\v2%.utxorpc.v1alpha.cardano.NativeScriptR\ENQitems\"[\n\
    \\n\
    \ScriptNOfK\DC2\f\n\
    \\SOHk\CAN\SOH \SOH(\rR\SOHk\DC2?\n\
    \\ascripts\CAN\STX \ETX(\v2%.utxorpc.v1alpha.cardano.NativeScriptR\ascripts\"\128\SOH\n\
    \\ACKConstr\DC2\DLE\n\
    \\ETXtag\CAN\SOH \SOH(\rR\ETXtag\DC2'\n\
    \\SIany_constructor\CAN\STX \SOH(\EOTR\SOanyConstructor\DC2;\n\
    \\ACKfields\CAN\ETX \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ACKfields\"c\n\
    \\ACKBigInt\DC2\DC2\n\
    \\ETXint\CAN\SOH \SOH(\ETXH\NULR\ETXint\DC2\FS\n\
    \\tbig_u_int\CAN\STX \SOH(\fH\NULR\abigUInt\DC2\FS\n\
    \\tbig_n_int\CAN\ETX \SOH(\fH\NULR\abigNIntB\t\n\
    \\abig_int\"\130\SOH\n\
    \\SOPlutusDataPair\DC25\n\
    \\ETXkey\CAN\SOH \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ETXkey\DC29\n\
    \\ENQvalue\CAN\STX \SOH(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQvalue\"\183\STX\n\
    \\n\
    \PlutusData\DC29\n\
    \\ACKconstr\CAN\SOH \SOH(\v2\US.utxorpc.v1alpha.cardano.ConstrH\NULR\ACKconstr\DC2:\n\
    \\ETXmap\CAN\STX \SOH(\v2&.utxorpc.v1alpha.cardano.PlutusDataMapH\NULR\ETXmap\DC2:\n\
    \\abig_int\CAN\ETX \SOH(\v2\US.utxorpc.v1alpha.cardano.BigIntH\NULR\ACKbigInt\DC2%\n\
    \\rbounded_bytes\CAN\EOT \SOH(\fH\NULR\fboundedBytes\DC2@\n\
    \\ENQarray\CAN\ENQ \SOH(\v2(.utxorpc.v1alpha.cardano.PlutusDataArrayH\NULR\ENQarrayB\r\n\
    \\vplutus_data\"N\n\
    \\rPlutusDataMap\DC2=\n\
    \\ENQpairs\CAN\SOH \ETX(\v2'.utxorpc.v1alpha.cardano.PlutusDataPairR\ENQpairs\"L\n\
    \\SIPlutusDataArray\DC29\n\
    \\ENQitems\CAN\SOH \ETX(\v2#.utxorpc.v1alpha.cardano.PlutusDataR\ENQitems\"\145\SOH\n\
    \\ACKScript\DC2?\n\
    \\ACKnative\CAN\SOH \SOH(\v2%.utxorpc.v1alpha.cardano.NativeScriptH\NULR\ACKnative\DC2\GS\n\
    \\tplutus_v1\CAN\STX \SOH(\fH\NULR\bplutusV1\DC2\GS\n\
    \\tplutus_v2\CAN\ETX \SOH(\fH\NULR\bplutusV2B\b\n\
    \\ACKscript\"\214\SOH\n\
    \\tMetadatum\DC2\DC2\n\
    \\ETXint\CAN\SOH \SOH(\ETXH\NULR\ETXint\DC2\SYN\n\
    \\ENQbytes\CAN\STX \SOH(\fH\NULR\ENQbytes\DC2\DC4\n\
    \\EOTtext\CAN\ETX \SOH(\tH\NULR\EOTtext\DC2?\n\
    \\ENQarray\CAN\EOT \SOH(\v2'.utxorpc.v1alpha.cardano.MetadatumArrayH\NULR\ENQarray\DC29\n\
    \\ETXmap\CAN\ENQ \SOH(\v2%.utxorpc.v1alpha.cardano.MetadatumMapH\NULR\ETXmapB\v\n\
    \\tmetadatum\"J\n\
    \\SOMetadatumArray\DC28\n\
    \\ENQitems\CAN\SOH \ETX(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQitems\"L\n\
    \\fMetadatumMap\DC2<\n\
    \\ENQpairs\CAN\SOH \ETX(\v2&.utxorpc.v1alpha.cardano.MetadatumPairR\ENQpairs\"\DEL\n\
    \\rMetadatumPair\DC24\n\
    \\ETXkey\CAN\SOH \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ETXkey\DC28\n\
    \\ENQvalue\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQvalue\"Z\n\
    \\bMetadata\DC2\DC4\n\
    \\ENQlabel\CAN\SOH \SOH(\EOTR\ENQlabel\DC28\n\
    \\ENQvalue\CAN\STX \SOH(\v2\".utxorpc.v1alpha.cardano.MetadatumR\ENQvalue\"n\n\
    \\SIStakeCredential\DC2$\n\
    \\raddr_key_hash\CAN\SOH \SOH(\fH\NULR\vaddrKeyHash\DC2!\n\
    \\vscript_hash\CAN\STX \SOH(\fH\NULR\n\
    \scriptHashB\DC2\n\
    \\DLEstake_credential\"P\n\
    \\SORationalNumber\DC2\FS\n\
    \\tnumerator\CAN\SOH \SOH(\ENQR\tnumerator\DC2 \n\
    \\vdenominator\CAN\STX \SOH(\rR\vdenominator\"`\n\
    \\ENQRelay\DC2\DC3\n\
    \\ENQip_v4\CAN\SOH \SOH(\fR\EOTipV4\DC2\DC3\n\
    \\ENQip_v6\CAN\STX \SOH(\fR\EOTipV6\DC2\EM\n\
    \\bdns_name\CAN\ETX \SOH(\tR\adnsName\DC2\DC2\n\
    \\EOTport\CAN\EOT \SOH(\rR\EOTport\"4\n\
    \\fPoolMetadata\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\fR\EOThash\"\145\ENQ\n\
    \\vCertificate\DC2Y\n\
    \\DC2stake_registration\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialH\NULR\DC1stakeRegistration\DC2]\n\
    \\DC4stake_deregistration\CAN\STX \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialH\NULR\DC3stakeDeregistration\DC2Y\n\
    \\DLEstake_delegation\CAN\ETX \SOH(\v2,.utxorpc.v1alpha.cardano.StakeDelegationCertH\NULR\SIstakeDelegation\DC2\\\n\
    \\DC1pool_registration\CAN\EOT \SOH(\v2-.utxorpc.v1alpha.cardano.PoolRegistrationCertH\NULR\DLEpoolRegistration\DC2V\n\
    \\SIpool_retirement\CAN\ENQ \SOH(\v2+.utxorpc.v1alpha.cardano.PoolRetirementCertH\NULR\SOpoolRetirement\DC2i\n\
    \\SYNgenesis_key_delegation\CAN\ACK \SOH(\v21.utxorpc.v1alpha.cardano.GenesisKeyDelegationCertH\NULR\DC4genesisKeyDelegation\DC2=\n\
    \\bmir_cert\CAN\a \SOH(\v2 .utxorpc.v1alpha.cardano.MirCertH\NULR\amirCertB\r\n\
    \\vcertificate\"\141\SOH\n\
    \\DC3StakeDelegationCert\DC2S\n\
    \\DLEstake_credential\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialR\SIstakeCredential\DC2!\n\
    \\fpool_keyhash\CAN\STX \SOH(\fR\vpoolKeyhash\"\140\ETX\n\
    \\DC4PoolRegistrationCert\DC2\SUB\n\
    \\boperator\CAN\SOH \SOH(\fR\boperator\DC2\US\n\
    \\vvrf_keyhash\CAN\STX \SOH(\fR\n\
    \vrfKeyhash\DC2\SYN\n\
    \\ACKpledge\CAN\ETX \SOH(\EOTR\ACKpledge\DC2\DC2\n\
    \\EOTcost\CAN\EOT \SOH(\EOTR\EOTcost\DC2?\n\
    \\ACKmargin\CAN\ENQ \SOH(\v2'.utxorpc.v1alpha.cardano.RationalNumberR\ACKmargin\DC2%\n\
    \\SOreward_account\CAN\ACK \SOH(\fR\rrewardAccount\DC2\US\n\
    \\vpool_owners\CAN\a \ETX(\fR\n\
    \poolOwners\DC26\n\
    \\ACKrelays\CAN\b \ETX(\v2\RS.utxorpc.v1alpha.cardano.RelayR\ACKrelays\DC2J\n\
    \\rpool_metadata\CAN\t \SOH(\v2%.utxorpc.v1alpha.cardano.PoolMetadataR\fpoolMetadata\"M\n\
    \\DC2PoolRetirementCert\DC2!\n\
    \\fpool_keyhash\CAN\SOH \SOH(\fR\vpoolKeyhash\DC2\DC4\n\
    \\ENQepoch\CAN\STX \SOH(\EOTR\ENQepoch\"\146\SOH\n\
    \\CANGenesisKeyDelegationCert\DC2!\n\
    \\fgenesis_hash\CAN\SOH \SOH(\fR\vgenesisHash\DC22\n\
    \\NAKgenesis_delegate_hash\CAN\STX \SOH(\fR\DC3genesisDelegateHash\DC2\US\n\
    \\vvrf_keyhash\CAN\ETX \SOH(\fR\n\
    \vrfKeyhash\"\DEL\n\
    \\tMirTarget\DC2S\n\
    \\DLEstake_credential\CAN\SOH \SOH(\v2(.utxorpc.v1alpha.cardano.StakeCredentialR\SIstakeCredential\DC2\GS\n\
    \\n\
    \delta_coin\CAN\STX \SOH(\ETXR\tdeltaCoin\"\146\SOH\n\
    \\aMirCert\DC26\n\
    \\EOTfrom\CAN\SOH \SOH(\SO2\".utxorpc.v1alpha.cardano.MirSourceR\EOTfrom\DC22\n\
    \\STXto\CAN\STX \ETX(\v2\".utxorpc.v1alpha.cardano.MirTargetR\STXto\DC2\ESC\n\
    \\tother_pot\CAN\ETX \SOH(\EOTR\botherPot\"\223\SOH\n\
    \\SOAddressPattern\DC2#\n\
    \\rbyron_address\CAN\SOH \SOH(\fR\fbyronAddress\DC2!\n\
    \\fpayment_part\CAN\STX \SOH(\fR\vpaymentPart\DC2'\n\
    \\SIdelegation_part\CAN\ETX \SOH(\fR\SOdelegationPart\DC2*\n\
    \\DC1payment_is_script\CAN\EOT \SOH(\bR\SIpaymentIsScript\DC20\n\
    \\DC4delegation_is_script\CAN\ENQ \SOH(\bR\DC2delegationIsScript\"\SO\n\
    \\fAssetPattern\"\SI\n\
    \\rOutputPattern\"\SO\n\
    \\fDatumPattern\"\186\STX\n\
    \\tTxPattern\DC2G\n\
    \\n\
    \any_output\CAN\SOH \SOH(\v2&.utxorpc.v1alpha.cardano.OutputPatternH\NULR\tanyOutput\DC2J\n\
    \\vany_address\CAN\STX \SOH(\v2'.utxorpc.v1alpha.cardano.AddressPatternH\NULR\n\
    \anyAddress\DC2D\n\
    \\tany_asset\CAN\ETX \SOH(\v2%.utxorpc.v1alpha.cardano.AssetPatternH\NULR\banyAsset\DC2D\n\
    \\tany_datum\CAN\EOT \SOH(\v2%.utxorpc.v1alpha.cardano.DatumPatternH\NULR\banyDatumB\f\n\
    \\n\
    \tx_pattern*\162\SOH\n\
    \\SIRedeemerPurpose\DC2 \n\
    \\FSREDEEMER_PURPOSE_UNSPECIFIED\DLE\NUL\DC2\SUB\n\
    \\SYNREDEEMER_PURPOSE_SPEND\DLE\SOH\DC2\EM\n\
    \\NAKREDEEMER_PURPOSE_MINT\DLE\STX\DC2\EM\n\
    \\NAKREDEEMER_PURPOSE_CERT\DLE\ETX\DC2\ESC\n\
    \\ETBREDEEMER_PURPOSE_REWARD\DLE\EOT*Y\n\
    \\tMirSource\DC2\SUB\n\
    \\SYNMIR_SOURCE_UNSPECIFIED\DLE\NUL\DC2\ETB\n\
    \\DC3MIR_SOURCE_RESERVES\DLE\SOH\DC2\ETB\n\
    \\DC3MIR_SOURCE_TREASURY\DLE\STXB\225\SOH\n\
    \\ESCcom.utxorpc.v1alpha.cardanoB\fCardanoProtoP\SOHZ6github.com/utxorpc/go-sdk/spec/utxorpc/v1alpha/cardano\162\STX\ETXUVC\170\STX\ETBUtxorpc.V1alpha.Cardano\202\STX\ETBUtxorpc\\V1alpha\\Cardano\226\STX#Utxorpc\\V1alpha\\Cardano\\GPBMetadata\234\STX\EMUtxorpc::V1alpha::CardanoJ\207x\n\
    \\a\DC2\ENQ\NUL\NUL\222\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \7\n\
    \\STX\ENQ\NUL\DC2\EOT\ENQ\NUL\v\SOH\SUB+ Purpose of the redeemer in a transaction.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\ENQ\ENQ\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ACK\STX#\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ACK\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ACK!\"\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\a\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\a\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\a\ESC\FS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\b\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\b\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\b\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\t\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\n\
    \\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\n\
    \\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\n\
    \\FS\GS\n\
    \7\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\DC1\SOH\SUB+ Redeemer information for a Plutus script.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\DLE\n\
    \'\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX\RS\"\SUB Purpose of the redeemer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SI\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\FS\GS\n\
    \8\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STX\ETB\"+ Plutus data associated with the redeemer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DLE\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE\NAK\SYN\n\
    \G\n\
    \\STX\EOT\SOH\DC2\EOT\DC4\NUL\EM\SOH\SUB; Represents a transaction input in the Cardano blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC4\b\SI\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX\DC4\"# Hash of the previous transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\b\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\DC2\DC3\n\
    \?\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SYN\STX\SUB\"2 Index of the output in the previous transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SYN\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SYN\CAN\EM\n\
    \T\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\ETB\STX\EM\"G Content of the input represented as output of the related transaction\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\ETB\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \.\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\CAN\STX\CAN\"! Redeemer for the Plutus script.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\CAN\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\CAN\SYN\ETB\n\
    \H\n\
    \\STX\EOT\STX\DC2\EOT\FS\NUL#\SOH\SUB< Represents a transaction output in the Cardano blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\FS\b\DLE\n\
    \,\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\GS\STX\DC4\"\US Address receiving the output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\GS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\GS\b\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\GS\DC2\DC3\n\
    \+\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\RS\STX\DC2\"\RS Amount of ADA in the output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\RS\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\RS\DLE\DC1\n\
    \@\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\US\STX!\"3 Additional native (non-ADA) assets in the output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX\US\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\US\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\US\US \n\
    \6\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX \STX\ETB\") Plutus data associated with the output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX \STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX \r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX \NAK\SYN\n\
    \'\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX!\STX\ETB\"\SUB Hash of the Plutus data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX!\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX!\NAK\SYN\n\
    \1\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\"\STX\DC4\"$ Script associated with the output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\"\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\"\DC2\DC3\n\
    \B\n\
    \\STX\EOT\ETX\DC2\EOT&\NUL*\SOH\SUB6 Represents a custom asset in the Cardano blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX&\b\r\n\
    \(\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX'\STX\DC1\"\ESC Name of the custom asset.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX'\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX'\b\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX'\SI\DLE\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX(\STX\EM\"4 Quantity of the custom asset in case of an output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX(\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX(\ETB\CAN\n\
    \>\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX)\STX\SYN\"1 Quantity of the custom asset in case of a mint.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX)\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX)\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX)\DC4\NAK\n\
    \G\n\
    \\STX\EOT\EOT\DC2\EOT-\NUL0\SOH\SUB; Represents a multi-asset group in the Cardano blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX-\b\DC2\n\
    \5\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX.\STX\SYN\"( Policy ID governing the custom assets.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX.\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX.\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX.\DC4\NAK\n\
    \%\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX/\STX\FS\"\CAN List of custom assets.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX/\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX/\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX/\SUB\ESC\n\
    \@\n\
    \\STX\EOT\ENQ\DC2\EOT3\NUL6\SOH\SUB4 Represents the validity interval of a transaction.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX3\b\DC2\n\
    \.\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX4\STX\DC3\"! Start of the validity interval.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX4\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX4\DC1\DC2\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX5\STX\DC1\"3 End of the validity interval (TTL: Time to Live).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX5\t\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX5\SI\DLE\n\
    \F\n\
    \\STX\EOT\ACK\DC2\EOT9\NUL=\SOH\SUB: Represents the collateral information for a transaction.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX9\b\DC2\n\
    \5\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX:\STX\"\"( Collateral inputs for the transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX:\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX:\DC3\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX: !\n\
    \;\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX;\STX!\". Collateral return in case of script failure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX;\v\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX;\US \n\
    \*\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX<\STX\RS\"\GS Total amount of collateral.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX<\t\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX<\FS\GS\n\
    \<\n\
    \\STX\EOT\a\DC2\EOT@\NULC\SOH\SUB0 Represents a withdrawal from a reward account.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX@\b\DC2\n\
    \-\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXA\STX\ESC\"  Address of the reward account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXA\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXA\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXA\EM\SUB\n\
    \'\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXB\STX\DC2\"\SUB Amount of ADA withdrawn.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXB\t\r\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXB\DLE\DC1\n\
    \G\n\
    \\STX\EOT\b\DC2\EOTF\NULJ\SOH\SUB; Represents a set of witnesses that validate a transaction\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXF\b\DC2\n\
    \&\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXG\STX'\"\EM List of VKey witnesses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXG\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXG\ETB\"\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXG%&\n\
    \\US\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXH\STX\GS\"\DC2 List of scripts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXH\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXH\ESC\FS\n\
    \L\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXI\STX(\"? List of Plutus data elements associated with the transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\ETXI\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXI\SYN#\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXI&'\n\
    \H\n\
    \\STX\EOT\t\DC2\EOTM\NULP\SOH\SUB< Auxiliary data not directly tied to the validation process\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXM\b\SI\n\
    \3\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXN\STX!\"& List of auxiliary metadata elements.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXN\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXN\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXN\US \n\
    \)\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXO\STX\RS\"\FS List of auxiliary scripts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXO\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXO\FS\GS\n\
    \A\n\
    \\STX\EOT\n\
    \\DC2\EOTS\NUL`\SOH\SUB5 Represents a transaction in the Cardano blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXS\b\n\
    \\n\
    \)\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXT\STX\RS\"\FS List of transaction inputs\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETXT\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXT\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXT\FS\GS\n\
    \*\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXU\STX \"\GS List of transaction outputs\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\ETXU\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXU\DC4\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXU\RS\US\n\
    \#\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXV\STX(\"\SYN List of certificates\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\ETXV\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXV\ETB#\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXV&'\n\
    \\"\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXW\STX&\"\NAK List of withdrawals\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ACK\DC2\ETXW\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXW\SYN!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXW$%\n\
    \+\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETXX\STX\US\"\RS List of minted custom assets\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\ETXX\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETXX\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETXX\GS\RS\n\
    \'\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ETXY\STX(\"\SUB List of reference inputs\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\ETXY\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\ETXY\DC3#\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\ETXY&'\n\
    \5\n\
    \\EOT\EOT\n\
    \\STX\ACK\DC2\ETXZ\STX\ESC\"( Witnesses that validte the transaction\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ACK\DC2\ETXZ\STX\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\SOH\DC2\ETXZ\r\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ETX\DC2\ETXZ\EM\SUB\n\
    \?\n\
    \\EOT\EOT\n\
    \\STX\a\DC2\ETX[\STX\FS\"2 Collateral details in case of failed transaction\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\ACK\DC2\ETX[\STX\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\SOH\DC2\ETX[\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\ETX\DC2\ETX[\SUB\ESC\n\
    \%\n\
    \\EOT\EOT\n\
    \\STX\b\DC2\ETX\\\STX\DC1\"\CAN Transaction fee in ADA\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\SOH\DC2\ETX\\\t\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\ETX\DC2\ETX\\\SI\DLE\n\
    \3\n\
    \\EOT\EOT\n\
    \\STX\t\DC2\ETX]\STX\ESC\"& Validity interval of the transaction\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\ACK\DC2\ETX]\STX\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\SOH\DC2\ETX]\r\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\ETX\DC2\ETX]\CAN\SUB\n\
    \E\n\
    \\EOT\EOT\n\
    \\STX\n\
    \\DC2\ETX^\STX\ETB\"8 Flag indicating whether the transaction was successful\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\ENQ\DC2\ETX^\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\SOH\DC2\ETX^\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\ETX\DC2\ETX^\DC4\SYN\n\
    \I\n\
    \\EOT\EOT\n\
    \\STX\v\DC2\ETX_\STX\EM\"< Auxiliary data not directly tied to the validation process\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\v\ACK\DC2\ETX_\STX\t\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\v\SOH\DC2\ETX_\n\
    \\DC3\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\v\ETX\DC2\ETX_\SYN\CAN\n\
    \:\n\
    \\STX\EOT\v\DC2\EOTc\NULf\SOH\SUB. Contains the header information for a block.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXc\b\DC3\n\
    \\ESC\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXd\STX\DC2\"\SO Slot number.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXd\t\r\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXd\DLE\DC1\n\
    \\SUB\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXe\STX\DC1\"\r Block hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXe\STX\a\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXe\b\f\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXe\SI\DLE\n\
    \8\n\
    \\STX\EOT\f\DC2\EOTi\NULk\SOH\SUB, Contains the transaction data for a block.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXi\b\DC1\n\
    \$\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXj\STX\NAK\"\ETB List of transactions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\ETXj\v\r\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXj\SO\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXj\DC3\DC4\n\
    \E\n\
    \\STX\EOT\r\DC2\EOTn\NULq\SOH\SUB9 Represents a complete block, including header and body.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXn\b\r\n\
    \\FS\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXo\STX\EM\"\SI Block header.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\ETXo\STX\r\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXo\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXo\ETB\CAN\n\
    \\SUB\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXp\STX\NAK\"\r Block body.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\ETXp\STX\v\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXp\f\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXp\DC3\DC4\n\
    \C\n\
    \\STX\EOT\SO\DC2\EOTt\NULw\SOH\SUB7 Represents a VKey witness used to sign a transaction.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXt\b\DC3\n\
    \ \n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXu\STX\DC1\"\DC3 Verification key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXu\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXu\b\f\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXu\SI\DLE\n\
    \D\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXv\STX\SYN\"7 Signature generated using the associated private key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXv\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXv\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXv\DC4\NAK\n\
    \5\n\
    \\STX\EOT\SI\DC2\ENQz\NUL\131\SOH\SOH\SUB( Represents a native script in Cardano.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXz\b\DC4\n\
    \\r\n\
    \\EOT\EOT\SI\b\NUL\DC2\ENQ{\STX\130\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\SI\b\NUL\SOH\DC2\ETX{\b\NAK\n\
    \3\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETX|\EOT\FS\"& Script based on an address key hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETX|\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETX|\n\
    \\ETB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETX|\SUB\ESC\n\
    \G\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETX}\EOT$\": Script that requires all nested scripts to be satisfied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\ETX}\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETX}\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETX}\"#\n\
    \N\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETX~\EOT$\"A Script that requires any of the nested scripts to be satisfied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ACK\DC2\ETX~\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETX~\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETX~\"#\n\
    \N\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETX\DEL\EOT!\"A Script that requires k out of n nested scripts to be satisfied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ACK\DC2\ETX\DEL\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETX\DEL\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETX\DEL\US \n\
    \?\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\128\SOH\EOT\RS\"1 Slot number before which the script is invalid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\128\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\128\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\128\SOH\FS\GS\n\
    \>\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\129\SOH\EOT!\"0 Slot number after which the script is invalid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\129\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\129\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\129\SOH\US \n\
    \4\n\
    \\STX\EOT\DLE\DC2\ACK\134\SOH\NUL\136\SOH\SOH\SUB& Represents a list of native scripts.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\134\SOH\b\CAN\n\
    \'\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\135\SOH\STX\"\"\EM List of native scripts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\135\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\135\SOH\CAN\GS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\135\SOH !\n\
    \8\n\
    \\STX\EOT\DC1\DC2\ACK\139\SOH\NUL\142\SOH\SOH\SUB* Represents a \"k out of n\" native script.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\139\SOH\b\DC2\n\
    \9\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\140\SOH\STX\SI\"+ The number of required satisfied scripts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\140\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\140\SOH\t\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\140\SOH\r\SO\n\
    \'\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\141\SOH\STX$\"\EM List of native scripts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\141\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\141\SOH\CAN\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\141\SOH\"#\n\
    \D\n\
    \\STX\EOT\DC2\DC2\ACK\145\SOH\NUL\149\SOH\SOH\SUB6 Represents a constructor for Plutus data in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\145\SOH\b\SO\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\146\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\146\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\146\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\146\SOH\SI\DLE\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\147\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\147\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\147\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\148\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ACK\DC2\EOT\148\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\148\SOH\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\148\SOH\US \n\
    \D\n\
    \\STX\EOT\DC3\DC2\ACK\152\SOH\NUL\158\SOH\SOH\SUB6 Represents a big integer for Plutus data in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\152\SOH\b\SO\n\
    \\SO\n\
    \\EOT\EOT\DC3\b\NUL\DC2\ACK\153\SOH\STX\157\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\DC3\b\NUL\SOH\DC2\EOT\153\SOH\b\SI\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\154\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\154\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\154\SOH\n\
    \\r\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\154\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\155\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\155\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\155\SOH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\155\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\156\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\156\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\156\SOH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\156\SOH\SYN\ETB\n\
    \G\n\
    \\STX\EOT\DC4\DC2\ACK\161\SOH\NUL\164\SOH\SOH\SUB9 Represents a key-value pair for Plutus data in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\161\SOH\b\SYN\n\
    \ \n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\162\SOH\STX\NAK\"\DC2 Key of the pair.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\162\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\162\SOH\r\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\162\SOH\DC3\DC4\n\
    \\"\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\163\SOH\STX\ETB\"\DC4 Value of the pair.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\163\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\163\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\163\SOH\NAK\SYN\n\
    \9\n\
    \\STX\EOT\NAK\DC2\ACK\167\SOH\NUL\175\SOH\SOH\SUB+ Represents a Plutus data item in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\167\SOH\b\DC2\n\
    \\SO\n\
    \\EOT\EOT\NAK\b\NUL\DC2\ACK\168\SOH\STX\174\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NAK\b\NUL\SOH\DC2\EOT\168\SOH\b\DC3\n\
    \\FS\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\169\SOH\EOT\SYN\"\SO Constructor.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ACK\DC2\EOT\169\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\169\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\169\SOH\DC4\NAK\n\
    \#\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\170\SOH\EOT\SUB\"\NAK Map of Plutus data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\170\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\170\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\170\SOH\CAN\EM\n\
    \\FS\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\171\SOH\EOT\ETB\"\SO Big integer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ACK\DC2\EOT\171\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\171\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\171\SOH\NAK\SYN\n\
    \\RS\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\EOT\172\SOH\EOT\FS\"\DLE Bounded bytes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ENQ\DC2\EOT\172\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\EOT\172\SOH\n\
    \\ETB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\EOT\172\SOH\SUB\ESC\n\
    \%\n\
    \\EOT\EOT\NAK\STX\EOT\DC2\EOT\173\SOH\EOT\RS\"\ETB Array of Plutus data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ACK\DC2\EOT\173\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\SOH\DC2\EOT\173\SOH\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ETX\DC2\EOT\173\SOH\FS\GS\n\
    \;\n\
    \\STX\EOT\SYN\DC2\ACK\178\SOH\NUL\180\SOH\SOH\SUB- Represents a map of Plutus data in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\178\SOH\b\NAK\n\
    \(\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\179\SOH\STX$\"\SUB List of key-value pairs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\EOT\179\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\179\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\179\SOH\SUB\US\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\179\SOH\"#\n\
    \>\n\
    \\STX\EOT\ETB\DC2\ACK\183\SOH\NUL\185\SOH\SOH\SUB0 Represents an array of Plutus data in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\183\SOH\b\ETB\n\
    \*\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\184\SOH\STX \"\FS List of Plutus data items.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\EOT\184\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\184\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\184\SOH\SYN\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\184\SOH\RS\US\n\
    \/\n\
    \\STX\EOT\CAN\DC2\ACK\188\SOH\NUL\194\SOH\SOH\SUB! Represents a script in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\188\SOH\b\SO\n\
    \\SO\n\
    \\EOT\EOT\CAN\b\NUL\DC2\ACK\189\SOH\STX\193\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\CAN\b\NUL\SOH\DC2\EOT\189\SOH\b\SO\n\
    \\RS\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\190\SOH\EOT\FS\"\DLE Native script.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ACK\DC2\EOT\190\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\190\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\190\SOH\SUB\ESC\n\
    \!\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\191\SOH\EOT\CAN\"\DC3 Plutus V1 script.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\191\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\191\SOH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\191\SOH\SYN\ETB\n\
    \!\n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\192\SOH\EOT\CAN\"\DC3 Plutus V2 script.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ENQ\DC2\EOT\192\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\192\SOH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\192\SOH\SYN\ETB\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\196\SOH\NUL\204\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\196\SOH\b\DC1\n\
    \\SO\n\
    \\EOT\EOT\EM\b\NUL\DC2\ACK\197\SOH\STX\203\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\EM\b\NUL\SOH\DC2\EOT\197\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\198\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\198\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\198\SOH\n\
    \\r\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\198\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\199\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\199\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\199\SOH\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\199\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\200\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ENQ\DC2\EOT\200\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\200\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\200\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\EM\STX\ETX\DC2\EOT\201\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ACK\DC2\EOT\201\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\SOH\DC2\EOT\201\SOH\DC3\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ETX\DC2\EOT\201\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\EM\STX\EOT\DC2\EOT\202\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ACK\DC2\EOT\202\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\SOH\DC2\EOT\202\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ETX\DC2\EOT\202\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\206\SOH\NUL\208\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\206\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\207\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\207\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\207\SOH\NAK\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\207\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\210\SOH\NUL\212\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\210\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\211\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\EOT\DC2\EOT\211\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\211\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\211\SOH\EM\RS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\211\SOH!\"\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\214\SOH\NUL\217\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\214\SOH\b\NAK\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\215\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ACK\DC2\EOT\215\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\215\SOH\f\SI\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\215\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\216\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ACK\DC2\EOT\216\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\216\SOH\f\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\216\SOH\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\219\SOH\NUL\222\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\219\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\220\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ENQ\DC2\EOT\220\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\220\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\220\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\221\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ACK\DC2\EOT\221\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\221\SOH\f\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\221\SOH\DC4\NAK\n\
    \9\n\
    \\STX\EOT\RS\DC2\ACK\225\SOH\NUL\230\SOH\SOH\SUB+ Represents a stake credential in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\225\SOH\b\ETB\n\
    \\SO\n\
    \\EOT\EOT\RS\b\NUL\DC2\ACK\226\SOH\STX\229\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\RS\b\NUL\SOH\DC2\EOT\226\SOH\b\CAN\n\
    \!\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\227\SOH\EOT\FS\"\DC3 Address key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\227\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\227\SOH\n\
    \\ETB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\227\SOH\SUB\ESC\n\
    \\FS\n\
    \\EOT\EOT\RS\STX\SOH\DC2\EOT\228\SOH\EOT\SUB\"\SO Script hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ENQ\DC2\EOT\228\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\SOH\DC2\EOT\228\SOH\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ETX\DC2\EOT\228\SOH\CAN\EM\n\
    \;\n\
    \\STX\EOT\US\DC2\ACK\233\SOH\NUL\236\SOH\SOH\SUB- Represents a rational number as a fraction.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\233\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\234\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ENQ\DC2\EOT\234\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\234\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\234\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\US\STX\SOH\DC2\EOT\235\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ENQ\DC2\EOT\235\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\SOH\DC2\EOT\235\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ETX\DC2\EOT\235\SOH\ETB\CAN\n\
    \.\n\
    \\STX\EOT \DC2\ACK\239\SOH\NUL\244\SOH\SOH\SUB  Represents a relay in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\239\SOH\b\r\n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\240\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\240\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\240\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\240\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT \STX\SOH\DC2\EOT\241\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ENQ\DC2\EOT\241\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\SOH\DC2\EOT\241\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ETX\DC2\EOT\241\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT \STX\STX\DC2\EOT\242\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ENQ\DC2\EOT\242\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\SOH\DC2\EOT\242\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ETX\DC2\EOT\242\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT \STX\ETX\DC2\EOT\243\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\ENQ\DC2\EOT\243\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\SOH\DC2\EOT\243\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\ETX\DC2\EOT\243\SOH\DLE\DC1\n\
    \4\n\
    \\STX\EOT!\DC2\ACK\247\SOH\NUL\250\SOH\SOH\SUB& Represents pool metadata in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\247\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT!\STX\NUL\DC2\EOT\248\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ENQ\DC2\EOT\248\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\248\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\248\SOH\SI\DLE\n\
    \\f\n\
    \\EOT\EOT!\STX\SOH\DC2\EOT\249\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ENQ\DC2\EOT\249\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\SOH\DC2\EOT\249\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ETX\DC2\EOT\249\SOH\SI\DLE\n\
    \4\n\
    \\STX\EOT\"\DC2\ACK\253\SOH\NUL\135\STX\SOH\SUB& Represents a certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\253\SOH\b\DC3\n\
    \\SO\n\
    \\EOT\EOT\"\b\NUL\DC2\ACK\254\SOH\STX\134\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\"\b\NUL\SOH\DC2\EOT\254\SOH\b\DC3\n\
    \/\n\
    \\EOT\EOT\"\STX\NUL\DC2\EOT\255\SOH\EOT+\"! Stake registration certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ACK\DC2\EOT\255\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\255\SOH\DC4&\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\255\SOH)*\n\
    \1\n\
    \\EOT\EOT\"\STX\SOH\DC2\EOT\128\STX\EOT-\"# Stake deregistration certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ACK\DC2\EOT\128\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\128\STX\DC4(\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\128\STX+,\n\
    \-\n\
    \\EOT\EOT\"\STX\STX\DC2\EOT\129\STX\EOT-\"\US Stake delegation certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ACK\DC2\EOT\129\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\SOH\DC2\EOT\129\STX\CAN(\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ETX\DC2\EOT\129\STX+,\n\
    \.\n\
    \\EOT\EOT\"\STX\ETX\DC2\EOT\130\STX\EOT/\"  Pool registration certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ACK\DC2\EOT\130\STX\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\SOH\DC2\EOT\130\STX\EM*\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ETX\DC2\EOT\130\STX-.\n\
    \,\n\
    \\EOT\EOT\"\STX\EOT\DC2\EOT\131\STX\EOT+\"\RS Pool retirement certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ACK\DC2\EOT\131\STX\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\SOH\DC2\EOT\131\STX\ETB&\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ETX\DC2\EOT\131\STX)*\n\
    \3\n\
    \\EOT\EOT\"\STX\ENQ\DC2\EOT\132\STX\EOT8\"% Genesis key delegation certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\ACK\DC2\EOT\132\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\SOH\DC2\EOT\132\STX\GS3\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\ETX\DC2\EOT\132\STX67\n\
    \7\n\
    \\EOT\EOT\"\STX\ACK\DC2\EOT\133\STX\EOT\EM\") Move instantaneous rewards certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\ACK\DC2\EOT\133\STX\EOT\v\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\SOH\DC2\EOT\133\STX\f\DC4\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\ETX\DC2\EOT\133\STX\ETB\CAN\n\
    \E\n\
    \\STX\EOT#\DC2\ACK\138\STX\NUL\141\STX\SOH\SUB7 Represents a stake delegation certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\138\STX\b\ESC\n\
    \!\n\
    \\EOT\EOT#\STX\NUL\DC2\EOT\139\STX\STX'\"\DC3 Stake credential.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ACK\DC2\EOT\139\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\SOH\DC2\EOT\139\STX\DC2\"\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ETX\DC2\EOT\139\STX%&\n\
    \\RS\n\
    \\EOT\EOT#\STX\SOH\DC2\EOT\140\STX\STX\EM\"\DLE Pool key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ENQ\DC2\EOT\140\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\SOH\DC2\EOT\140\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ETX\DC2\EOT\140\STX\ETB\CAN\n\
    \F\n\
    \\STX\EOT$\DC2\ACK\144\STX\NUL\154\STX\SOH\SUB8 Represents a pool registration certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT$\SOH\DC2\EOT\144\STX\b\FS\n\
    \\"\n\
    \\EOT\EOT$\STX\NUL\DC2\EOT\145\STX\STX\NAK\"\DC4 Operator key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ENQ\DC2\EOT\145\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\SOH\DC2\EOT\145\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ETX\DC2\EOT\145\STX\DC3\DC4\n\
    \\GS\n\
    \\EOT\EOT$\STX\SOH\DC2\EOT\146\STX\STX\CAN\"\SI VRF key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ENQ\DC2\EOT\146\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\SOH\DC2\EOT\146\STX\b\DC3\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ETX\DC2\EOT\146\STX\SYN\ETB\n\
    \\RS\n\
    \\EOT\EOT$\STX\STX\DC2\EOT\147\STX\STX\DC4\"\DLE Pledge amount.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ENQ\DC2\EOT\147\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\SOH\DC2\EOT\147\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ETX\DC2\EOT\147\STX\DC2\DC3\n\
    \\SUB\n\
    \\EOT\EOT$\STX\ETX\DC2\EOT\148\STX\STX\DC2\"\f Pool cost.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\ENQ\DC2\EOT\148\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\SOH\DC2\EOT\148\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\ETX\DC2\EOT\148\STX\DLE\DC1\n\
    \\FS\n\
    \\EOT\EOT$\STX\EOT\DC2\EOT\149\STX\STX\FS\"\SO Pool margin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\EOT\ACK\DC2\EOT\149\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\EOT\SOH\DC2\EOT\149\STX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT$\STX\EOT\ETX\DC2\EOT\149\STX\SUB\ESC\n\
    \\US\n\
    \\EOT\EOT$\STX\ENQ\DC2\EOT\150\STX\STX\ESC\"\DC1 Reward account.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\ENQ\ENQ\DC2\EOT\150\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT$\STX\ENQ\SOH\DC2\EOT\150\STX\b\SYN\n\
    \\r\n\
    \\ENQ\EOT$\STX\ENQ\ETX\DC2\EOT\150\STX\EM\SUB\n\
    \.\n\
    \\EOT\EOT$\STX\ACK\DC2\EOT\151\STX\STX!\"  List of pool owner key hashes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\ACK\EOT\DC2\EOT\151\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\ACK\ENQ\DC2\EOT\151\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\ACK\SOH\DC2\EOT\151\STX\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT$\STX\ACK\ETX\DC2\EOT\151\STX\US \n\
    \\US\n\
    \\EOT\EOT$\STX\a\DC2\EOT\152\STX\STX\FS\"\DC1 List of relays.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\a\EOT\DC2\EOT\152\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\a\ACK\DC2\EOT\152\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\a\SOH\DC2\EOT\152\STX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT$\STX\a\ETX\DC2\EOT\152\STX\SUB\ESC\n\
    \\RS\n\
    \\EOT\EOT$\STX\b\DC2\EOT\153\STX\STX!\"\DLE Pool metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\b\ACK\DC2\EOT\153\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT$\STX\b\SOH\DC2\EOT\153\STX\SI\FS\n\
    \\r\n\
    \\ENQ\EOT$\STX\b\ETX\DC2\EOT\153\STX\US \n\
    \D\n\
    \\STX\EOT%\DC2\ACK\157\STX\NUL\160\STX\SOH\SUB6 Represents a pool retirement certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT%\SOH\DC2\EOT\157\STX\b\SUB\n\
    \\RS\n\
    \\EOT\EOT%\STX\NUL\DC2\EOT\158\STX\STX\EM\"\DLE Pool key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ENQ\DC2\EOT\158\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\SOH\DC2\EOT\158\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ETX\DC2\EOT\158\STX\ETB\CAN\n\
    \!\n\
    \\EOT\EOT%\STX\SOH\DC2\EOT\159\STX\STX\DC3\"\DC3 Retirement epoch.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ENQ\DC2\EOT\159\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\SOH\DC2\EOT\159\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ETX\DC2\EOT\159\STX\DC1\DC2\n\
    \K\n\
    \\STX\EOT&\DC2\ACK\163\STX\NUL\167\STX\SOH\SUB= Represents a genesis key delegation certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT&\SOH\DC2\EOT\163\STX\b \n\
    \\GS\n\
    \\EOT\EOT&\STX\NUL\DC2\EOT\164\STX\STX\EM\"\SI Genesis hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ENQ\DC2\EOT\164\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\SOH\DC2\EOT\164\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ETX\DC2\EOT\164\STX\ETB\CAN\n\
    \&\n\
    \\EOT\EOT&\STX\SOH\DC2\EOT\165\STX\STX\"\"\CAN Genesis delegate hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ENQ\DC2\EOT\165\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\SOH\DC2\EOT\165\STX\b\GS\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ETX\DC2\EOT\165\STX !\n\
    \\GS\n\
    \\EOT\EOT&\STX\STX\DC2\EOT\166\STX\STX\CAN\"\SI VRF key hash.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ENQ\DC2\EOT\166\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\SOH\DC2\EOT\166\STX\b\DC3\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ETX\DC2\EOT\166\STX\SYN\ETB\n\
    \\f\n\
    \\STX\ENQ\SOH\DC2\ACK\169\STX\NUL\173\STX\SOH\n\
    \\v\n\
    \\ETX\ENQ\SOH\SOH\DC2\EOT\169\STX\ENQ\SO\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\170\STX\STX\GS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\170\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\170\STX\ESC\FS\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\171\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\171\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\171\STX\CAN\EM\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\172\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\172\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\172\STX\CAN\EM\n\
    \\f\n\
    \\STX\EOT'\DC2\ACK\175\STX\NUL\178\STX\SOH\n\
    \\v\n\
    \\ETX\EOT'\SOH\DC2\EOT\175\STX\b\DC1\n\
    \\f\n\
    \\EOT\EOT'\STX\NUL\DC2\EOT\176\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ACK\DC2\EOT\176\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\SOH\DC2\EOT\176\STX\DC2\"\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ETX\DC2\EOT\176\STX%&\n\
    \\f\n\
    \\EOT\EOT'\STX\SOH\DC2\EOT\177\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ENQ\DC2\EOT\177\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\SOH\DC2\EOT\177\STX\b\DC2\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ETX\DC2\EOT\177\STX\NAK\SYN\n\
    \N\n\
    \\STX\EOT(\DC2\ACK\181\STX\NUL\185\STX\SOH\SUB@ Represents a move instantaneous reward certificate in Cardano.\n\
    \\n\
    \\v\n\
    \\ETX\EOT(\SOH\DC2\EOT\181\STX\b\SI\n\
    \\f\n\
    \\EOT\EOT(\STX\NUL\DC2\EOT\182\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ACK\DC2\EOT\182\STX\STX\v\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\SOH\DC2\EOT\182\STX\f\DLE\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ETX\DC2\EOT\182\STX\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT(\STX\SOH\DC2\EOT\183\STX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\EOT\DC2\EOT\183\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ACK\DC2\EOT\183\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\SOH\DC2\EOT\183\STX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ETX\DC2\EOT\183\STX\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT(\STX\STX\DC2\EOT\184\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ENQ\DC2\EOT\184\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\SOH\DC2\EOT\184\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ETX\DC2\EOT\184\STX\NAK\SYN\n\
    \}\n\
    \\STX\EOT)\DC2\ACK\191\STX\NUL\197\STX\SOH\SUBI Pattern of an address that can be used to evaluate matching predicates.\n\
    \2$ PATTERN MATCHING\n\
    \ ================\n\
    \\n\
    \\v\n\
    \\ETX\EOT)\SOH\DC2\EOT\191\STX\b\SYN\n\
    \\f\n\
    \\EOT\EOT)\STX\NUL\DC2\EOT\192\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ENQ\DC2\EOT\192\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\SOH\DC2\EOT\192\STX\b\NAK\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ETX\DC2\EOT\192\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT)\STX\SOH\DC2\EOT\193\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ENQ\DC2\EOT\193\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\SOH\DC2\EOT\193\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ETX\DC2\EOT\193\STX\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT)\STX\STX\DC2\EOT\194\STX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\ENQ\DC2\EOT\194\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\SOH\DC2\EOT\194\STX\b\ETB\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\ETX\DC2\EOT\194\STX\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT)\STX\ETX\DC2\EOT\195\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT)\STX\ETX\ENQ\DC2\EOT\195\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT)\STX\ETX\SOH\DC2\EOT\195\STX\a\CAN\n\
    \\r\n\
    \\ENQ\EOT)\STX\ETX\ETX\DC2\EOT\195\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT)\STX\EOT\DC2\EOT\196\STX\STX \n\
    \\r\n\
    \\ENQ\EOT)\STX\EOT\ENQ\DC2\EOT\196\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT)\STX\EOT\SOH\DC2\EOT\196\STX\a\ESC\n\
    \\r\n\
    \\ENQ\EOT)\STX\EOT\ETX\DC2\EOT\196\STX\RS\US\n\
    \b\n\
    \\STX\EOT*\DC2\ACK\200\STX\NUL\202\STX\SOH\SUBM Pattern of a native asset that can be used to evaluate matching predicates.\n\
    \\"\ENQ TBD\n\
    \\n\
    \\v\n\
    \\ETX\EOT*\SOH\DC2\EOT\200\STX\b\DC4\n\
    \_\n\
    \\STX\EOT+\DC2\ACK\205\STX\NUL\207\STX\SOH\SUBJ Pattern of a tx output that can be used to evaluate matching predicates.\n\
    \\"\ENQ TBD\n\
    \\n\
    \\v\n\
    \\ETX\EOT+\SOH\DC2\EOT\205\STX\b\NAK\n\
    \\\\n\
    \\STX\EOT,\DC2\ACK\210\STX\NUL\212\STX\SOH\SUBG Pattern of an datum that can be used to evaluate matching predicates.\n\
    \\"\ENQ TBD\n\
    \\n\
    \\v\n\
    \\ETX\EOT,\SOH\DC2\EOT\210\STX\b\DC4\n\
    \Q\n\
    \\STX\EOT-\DC2\ACK\215\STX\NUL\222\STX\SOH\SUBC Pattern of a Tx that can be used to evaluate matching predicates.\n\
    \\n\
    \\v\n\
    \\ETX\EOT-\SOH\DC2\EOT\215\STX\b\DC1\n\
    \\SO\n\
    \\EOT\EOT-\b\NUL\DC2\ACK\216\STX\STX\221\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT-\b\NUL\SOH\DC2\EOT\216\STX\b\DC2\n\
    \<\n\
    \\EOT\EOT-\STX\NUL\DC2\EOT\217\STX\EOT!\". Match any output that exhibits this pattern.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ACK\DC2\EOT\217\STX\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\SOH\DC2\EOT\217\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ETX\DC2\EOT\217\STX\US \n\
    \`\n\
    \\EOT\EOT-\STX\SOH\DC2\EOT\218\STX\EOT#\"R Match any address (inputs, outputs, collateral, etc) that exhibits this pattern.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ACK\DC2\EOT\218\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\SOH\DC2\EOT\218\STX\DC3\RS\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ETX\DC2\EOT\218\STX!\"\n\
    \;\n\
    \\EOT\EOT-\STX\STX\DC2\EOT\219\STX\EOT\US\"- Match any asset that exhibits this pattern.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\ACK\DC2\EOT\219\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\SOH\DC2\EOT\219\STX\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\ETX\DC2\EOT\219\STX\GS\RS\n\
    \;\n\
    \\EOT\EOT-\STX\ETX\DC2\EOT\220\STX\EOT\US\"- Match any datum that exhibits this pattern.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\ACK\DC2\EOT\220\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\SOH\DC2\EOT\220\STX\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\ETX\DC2\EOT\220\STX\GS\RSb\ACKproto3"