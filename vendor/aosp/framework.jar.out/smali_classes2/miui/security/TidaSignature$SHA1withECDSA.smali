.class public Lmiui/security/TidaSignature$SHA1withECDSA;
.super Lmiui/security/TidaSignature;
.source "TidaSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/TidaSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1withECDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lmiui/security/TidaSignature;-><init>()V

    .line 72
    const-string v0, "SHA1withECDSA"

    iput-object v0, p0, Lmiui/security/TidaSignature$SHA1withECDSA;->mAlgorithm:Ljava/lang/String;

    .line 74
    # getter for: Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/security/TidaSignature;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new SHA1withECDSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
