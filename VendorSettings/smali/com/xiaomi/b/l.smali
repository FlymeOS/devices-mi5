.class public abstract Lcom/xiaomi/b/l;
.super Ljava/lang/Object;
.source "HttpProcessor.java"


# instance fields
.field private baA:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaomi/b/l;->baA:I

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/xiaomi/b/l;->baA:I

    return v0
.end method
