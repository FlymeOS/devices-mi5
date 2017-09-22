.class public Lcom/android/settings/wifi/n;
.super Ljava/lang/Object;
.source "MiuiTetherDeviceInfo.java"


# instance fields
.field private aAA:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/settings/wifi/n;->aAA:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/android/settings/wifi/n;->mDeviceAddress:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/wifi/n;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/wifi/n;->aAA:Ljava/lang/String;

    return-object v0
.end method
