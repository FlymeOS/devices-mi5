.class public Lmiui/security/TidaPrivateKey;
.super Lmiui/security/TidaKey;
.source "TidaPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field private mAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Lmiui/security/TidaKey;-><init>()V

    .line 10
    iput-object p1, p0, Lmiui/security/TidaPrivateKey;->mAlias:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lmiui/security/TidaPrivateKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method
