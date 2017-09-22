.class public Lmiui/hybrid/HybridResourceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private xW:Ljava/lang/String;

.field private xX:Ljava/lang/String;

.field private xY:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->xW:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lmiui/hybrid/HybridResourceResponse;->xX:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lmiui/hybrid/HybridResourceResponse;->xY:Ljava/io/InputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->xY:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->xX:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->xW:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->xY:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->xX:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->xW:Ljava/lang/String;

    .line 39
    return-void
.end method
