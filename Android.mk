#
# Android.mk
# Winton.Liu, 2018-09-25 15:28
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := \
    web3j-abi \
    web3j-core \
    web3j-crypto \
    web3j-rlp \
    web3j-tuples \
    web3j-utils 

LOCAL_MODULE := web3j

include $(BUILD_STATIC_JAVA_LIBRARY)


include $(CLEAR_VARS)

# Web3j Jar library

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    web3j-abi:lib/web3j/abi-3.3.1-android.jar \
    web3j-core:lib/web3j/core-3.3.1-android.jar \
    web3j-crypto:lib/web3j/crypto-3.3.1-android.jar \
    web3j-rlp:lib/web3j/rlp-3.3.1-android.jar \
    web3j-tuples:lib/web3j/tuples-3.3.1-android.jar \
    web3j-utils:lib/web3j/utils-3.3.1-android.jar

# rxjava Jar library

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += \
    retrofit2-adapter:lib/rxjava/adapter-rxjava-2.1.0.jar \
    jackson:lib/rxjava/jackson-annotations-2.8.0.jar \
    jackson-databind:lib/rxjava/jackson-databind-2.8.5.jar \
    okhttp-3:lib/rxjava/okhttp-3.10.0.jar \
    retrofit:lib/rxjava/retrofit-2.4.0.jar \
    reactivex-rxjava:lib/rxjava/rxjava-1.2.2.jar \
    retrofit2-converter:lib/rxjava/converter-jackson-2.3.0.jar \
    jackson-core:lib/rxjava/jackson-core-2.8.5.jar \
    okhttp-logging:lib/rxjava/logging-interceptor-3.8.1.jar \
    okio:lib/rxjava/okio-1.14.0.jar \
    reactivex-rxandroid:lib/rxjava/rxandroid-1.2.1.aar

# bitcoin Jar library
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += \
    bitcoinj-core:lib/bitcoin/bitcoinj-core-0.14.7.jar \
    spongycastle-core:lib/bitcoin/spongycastle-core-1.54.0.0.jar \
    spongycastle-prov:lib/bitcoin/spongycastle-prov-1.54.0.0.jar \
    guava-18:lib/bitcoin/guava-18.0.jar \
    protobuf-java:lib/bitcoin/protobuf-java-2.6.1.jar


# other Jar library
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += \
    lambda-scrypt:lib/lambda-scrypt-1.4.0.jar

include $(BUILD_MULTI_PREBUILT) 
