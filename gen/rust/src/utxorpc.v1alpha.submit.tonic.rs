// @generated
/// Generated client implementations.
pub mod submit_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    /** Service definition for submitting transactions and checking their status.
*/
    #[derive(Debug, Clone)]
    pub struct SubmitServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl SubmitServiceClient<tonic::transport::Channel> {
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
    impl<T> SubmitServiceClient<T>
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
        ) -> SubmitServiceClient<InterceptedService<T, F>>
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
            SubmitServiceClient::new(InterceptedService::new(inner, interceptor))
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
        pub async fn submit_tx(
            &mut self,
            request: impl tonic::IntoRequest<super::SubmitTxRequest>,
        ) -> Result<tonic::Response<super::SubmitTxResponse>, tonic::Status> {
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
                "/utxorpc.v1alpha.submit.SubmitService/SubmitTx",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn wait_for_tx(
            &mut self,
            request: impl tonic::IntoRequest<super::WaitForTxRequest>,
        ) -> Result<
            tonic::Response<tonic::codec::Streaming<super::WaitForTxResponse>>,
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
                "/utxorpc.v1alpha.submit.SubmitService/WaitForTx",
            );
            self.inner.server_streaming(request.into_request(), path, codec).await
        }
        ///
        pub async fn read_mempool(
            &mut self,
            request: impl tonic::IntoRequest<super::ReadMempoolRequest>,
        ) -> Result<tonic::Response<super::ReadMempoolResponse>, tonic::Status> {
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
                "/utxorpc.v1alpha.submit.SubmitService/ReadMempool",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        ///
        pub async fn watch_mempool(
            &mut self,
            request: impl tonic::IntoRequest<super::WatchMempoolRequest>,
        ) -> Result<
            tonic::Response<tonic::codec::Streaming<super::WatchMempoolResponse>>,
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
                "/utxorpc.v1alpha.submit.SubmitService/WatchMempool",
            );
            self.inner.server_streaming(request.into_request(), path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod submit_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with SubmitServiceServer.
    #[async_trait]
    pub trait SubmitService: Send + Sync + 'static {
        ///
        async fn submit_tx(
            &self,
            request: tonic::Request<super::SubmitTxRequest>,
        ) -> Result<tonic::Response<super::SubmitTxResponse>, tonic::Status>;
        /// Server streaming response type for the WaitForTx method.
        type WaitForTxStream: futures_core::Stream<
                Item = Result<super::WaitForTxResponse, tonic::Status>,
            >
            + Send
            + 'static;
        ///
        async fn wait_for_tx(
            &self,
            request: tonic::Request<super::WaitForTxRequest>,
        ) -> Result<tonic::Response<Self::WaitForTxStream>, tonic::Status>;
        ///
        async fn read_mempool(
            &self,
            request: tonic::Request<super::ReadMempoolRequest>,
        ) -> Result<tonic::Response<super::ReadMempoolResponse>, tonic::Status>;
        /// Server streaming response type for the WatchMempool method.
        type WatchMempoolStream: futures_core::Stream<
                Item = Result<super::WatchMempoolResponse, tonic::Status>,
            >
            + Send
            + 'static;
        ///
        async fn watch_mempool(
            &self,
            request: tonic::Request<super::WatchMempoolRequest>,
        ) -> Result<tonic::Response<Self::WatchMempoolStream>, tonic::Status>;
    }
    /** Service definition for submitting transactions and checking their status.
*/
    #[derive(Debug)]
    pub struct SubmitServiceServer<T: SubmitService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: SubmitService> SubmitServiceServer<T> {
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
    impl<T, B> tonic::codegen::Service<http::Request<B>> for SubmitServiceServer<T>
    where
        T: SubmitService,
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
                "/utxorpc.v1alpha.submit.SubmitService/SubmitTx" => {
                    #[allow(non_camel_case_types)]
                    struct SubmitTxSvc<T: SubmitService>(pub Arc<T>);
                    impl<
                        T: SubmitService,
                    > tonic::server::UnaryService<super::SubmitTxRequest>
                    for SubmitTxSvc<T> {
                        type Response = super::SubmitTxResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::SubmitTxRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move { (*inner).submit_tx(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = SubmitTxSvc(inner);
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
                "/utxorpc.v1alpha.submit.SubmitService/WaitForTx" => {
                    #[allow(non_camel_case_types)]
                    struct WaitForTxSvc<T: SubmitService>(pub Arc<T>);
                    impl<
                        T: SubmitService,
                    > tonic::server::ServerStreamingService<super::WaitForTxRequest>
                    for WaitForTxSvc<T> {
                        type Response = super::WaitForTxResponse;
                        type ResponseStream = T::WaitForTxStream;
                        type Future = BoxFuture<
                            tonic::Response<Self::ResponseStream>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::WaitForTxRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move { (*inner).wait_for_tx(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = WaitForTxSvc(inner);
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
                "/utxorpc.v1alpha.submit.SubmitService/ReadMempool" => {
                    #[allow(non_camel_case_types)]
                    struct ReadMempoolSvc<T: SubmitService>(pub Arc<T>);
                    impl<
                        T: SubmitService,
                    > tonic::server::UnaryService<super::ReadMempoolRequest>
                    for ReadMempoolSvc<T> {
                        type Response = super::ReadMempoolResponse;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ReadMempoolRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).read_mempool(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ReadMempoolSvc(inner);
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
                "/utxorpc.v1alpha.submit.SubmitService/WatchMempool" => {
                    #[allow(non_camel_case_types)]
                    struct WatchMempoolSvc<T: SubmitService>(pub Arc<T>);
                    impl<
                        T: SubmitService,
                    > tonic::server::ServerStreamingService<super::WatchMempoolRequest>
                    for WatchMempoolSvc<T> {
                        type Response = super::WatchMempoolResponse;
                        type ResponseStream = T::WatchMempoolStream;
                        type Future = BoxFuture<
                            tonic::Response<Self::ResponseStream>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::WatchMempoolRequest>,
                        ) -> Self::Future {
                            let inner = self.0.clone();
                            let fut = async move {
                                (*inner).watch_mempool(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = WatchMempoolSvc(inner);
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
    impl<T: SubmitService> Clone for SubmitServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
            }
        }
    }
    impl<T: SubmitService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(self.0.clone())
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: SubmitService> tonic::server::NamedService for SubmitServiceServer<T> {
        const NAME: &'static str = "utxorpc.v1alpha.submit.SubmitService";
    }
}
