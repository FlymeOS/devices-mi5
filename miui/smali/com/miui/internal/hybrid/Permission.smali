.class public Lcom/miui/internal/hybrid/Permission;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fl:Ljava/lang/String;

.field private fm:Z

.field private fn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/internal/hybrid/Permission;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public isApplySubdomains()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->fm:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->fn:Z

    return v0
.end method

.method public setApplySubdomains(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->fm:Z

    .line 27
    return-void
.end method

.method public setForbidden(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->fn:Z

    .line 35
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/internal/hybrid/Permission;->fl:Ljava/lang/String;

    .line 19
    return-void
.end method
