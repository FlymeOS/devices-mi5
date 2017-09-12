.class public interface abstract Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker$LivetalkImsBaseCallTracker;
.super Ljava/lang/Object;
.source "LivetalkImsCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LivetalkImsBaseCallTracker"
.end annotation


# virtual methods
.method public abstract getCallTracker()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end method

.method public abstract getLivetalkImsCallTracker()Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;
.end method

.method public abstract getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.end method

.method public abstract processLiveTalkCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
.end method

.method public abstract setPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
.end method
