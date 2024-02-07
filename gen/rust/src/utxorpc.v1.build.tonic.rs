// @generated
/// Generated client implementations.
pub mod ledger_state_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    /** Service definition for querying the state of the ledger.
*/
    #[derive(Debug, Clone)]
    pub struct LedgerStateServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl LedgerStateServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: std::convert::TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> LedgerStateServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> LedgerStateServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            LedgerStateServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        ///
        pub async fn get_chain_tip(
            &mut self,
            request: impl tonic::IntoRequest<super::GetChainTipRequest>,
        ) -> Result<tonic::Response<super::GetChainTipResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/utxorpc.v1.build.LedgerStateService/GetChainTip",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn get_chain_param(
            &mut self,
            request: impl tonic::IntoRequest<super::GetChainParamRequest>,
        ) -> Result<tonic::Response<super::GetChainParamResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/utxorpc.v1.build.LedgerStateService/GetChainParam",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn get_utxo_by_address(
            &mut self,
            request: impl tonic::IntoRequest<super::GetUtxoByAddressRequest>,
        ) -> Result<tonic::Response<super::GetUtxoByAddressResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/utxorpc.v1.build.LedgerStateService/GetUtxoByAddress",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn get_utxo_by_ref(
            &mut self,
            request: impl tonic::IntoRequest<super::GetUtxoByRefRequest>,
        ) -> Result<tonic::Response<super::GetUtxoByRefResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/utxorpc.v1.build.LedgerStateService/GetUtxoByRef",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn hold_utxo(
            &mut self,
            request: impl tonic::IntoRequest<super::HoldUtxoRequest>,
        ) -> Result<
            tonic::Response<tonic::codec::Streaming<super::HoldUtxoResponse>>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/utxorpc.v1.build.LedgerStateService/HoldUtxo",
            );
            self.inner.server_streaming(request.into_request(), path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod ledger_state_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with LedgerStateServiceServer.
    #[async_trait]
    pub trait LedgerStateService: Send + Sync + 'static {
        ///
        async fn get_chain_tip(
            &self,
            request: tonic::Request<super::GetChainTipRequest>,
        ) -> Result<tonic::Response<super::GetChainTipResponse>, tonic::Status>;
        ///
        async fn get_chain_param(
            &self,
            request: tonic::Request<super::GetChainParamRequest>,
        ) -> Result<tonic::Response<super::GetChainParamResponse>, tonic::Status>;
        ///
        async fn get_utxo_by_address(
            &self,
            request: tonic::Request<super::GetUtxoByAddressRequest>,
        ) -> Result<tonic::Response<super::GetUtxoByAddressResponse>, tonic::Status>;
        ///
        async fn get_utxo_by_ref(
            &self,
            request: tonic::Request<super::GetUtxoByRefRequest>,
        ) -> Result<tonic::Response<super::GetUtxoByRefResponse>, tonic::Status>;
        /// Server streaming response type for the HoldUtxo method.
        type HoldUtxoStream: futures_core::Stream<
                Item = Result<super::HoldUtxoResponse, tonic::Status>,
            >
            + Send
            + 'static;
        ///
        async fn hold_utxo(
            &self,
            request: tonic::Request<super::HoldUtxoRequest>,
        ) -> Result<tonic::Response<Self::HoldUtxoStream>, tonic::Status>;
    }
    /** Service definition for querying the state of the ledger.
*/
    #[derive(Debug)]
    pub struct LedgerStateServiceServer<T: LedgerStateService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: LedgerStateService> LedgerStateServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for LedgerStateServiceServer<T>
    where
        T: LedgerStateService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/utxorpc.v1.build.LedgerStateService/GetChainTip" => {
                    #[allow(non_camel_case_types)]
                    struct GetChainTipSvc<T: LedgerStateService>(pub Arc<T>);
                    impl<
                        T: LedgerStateService,
                    > tonic::server::UnaryService<super::GetChainTipRequest>
                    for GetChainTipSvc<T> {
                        type Response = super::GetChainTipResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetChainTipRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).get_chain_tip(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetChainTipSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/utxorpc.v1.build.LedgerStateService/GetChainParam" => {
                    #[allow(non_camel_case_types)]
                    struct GetChainParamSvc<T: LedgerStateService>(pub Arc<T>);
                    impl<
                        T: LedgerStateService,
                    > tonic::server::UnaryService<super::GetChainParamRequest>
                    for GetChainParamSvc<T> {
                        type Response = super::GetChainParamResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetChainParamRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).get_chain_param(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetChainParamSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/utxorpc.v1.build.LedgerStateService/GetUtxoByAddress" => {
                    #[allow(non_camel_case_types)]
                    struct GetUtxoByAddressSvc<T: LedgerStateService>(pub Arc<T>);
                    impl<
                        T: LedgerStateService,
                    > tonic::server::UnaryService<super::GetUtxoByAddressRequest>
                    for GetUtxoByAddressSvc<T> {
                        type Response = super::GetUtxoByAddressResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetUtxoByAddressRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).get_utxo_by_address(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetUtxoByAddressSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/utxorpc.v1.build.LedgerStateService/GetUtxoByRef" => {
                    #[allow(non_camel_case_types)]
                    struct GetUtxoByRefSvc<T: LedgerStateService>(pub Arc<T>);
                    impl<
                        T: LedgerStateService,
                    > tonic::server::UnaryService<super::GetUtxoByRefRequest>
                    for GetUtxoByRefSvc<T> {
                        type Response = super::GetUtxoByRefResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetUtxoByRefRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).get_utxo_by_ref(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetUtxoByRefSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/utxorpc.v1.build.LedgerStateService/HoldUtxo" => {
                    #[allow(non_camel_case_types)]
                    struct HoldUtxoSvc<T: LedgerStateService>(pub Arc<T>);
                    impl<
                        T: LedgerStateService,
                    > tonic::server::ServerStreamingService<super::HoldUtxoRequest>
                    for HoldUtxoSvc<T> {
                        type Response = super::HoldUtxoResponse;
                        type ResponseStream = T::HoldUtxoStream;
                        type Future = BoxFuture<
                            tonic::Response<Self::ResponseStream>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::HoldUtxoRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move { (*inner).hold_utxo(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = HoldUtxoSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            );
                        let res = grpc.server_streaming(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: LedgerStateService> Clone for LedgerStateServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
            }
        }
    }
    impl<T: LedgerStateService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(self.0.clone())
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: LedgerStateService> tonic::server::NamedService
    for LedgerStateServiceServer<T> {
        const NAME: &'static str = "utxorpc.v1.build.LedgerStateService";
    }
}
