.class public final Lcom/bumptech/glide/load/b/n;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# static fields
.field private static final aSM:Ljava/lang/String;

.field private static final aSN:Ljava/util/Map;


# instance fields
.field private aSO:Z

.field private aSP:Z

.field private aSQ:Z

.field private headers:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/n;->aSM:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    sget-object v1, Lcom/bumptech/glide/load/b/n;->aSM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "User-Agent"

    new-instance v2, Lcom/bumptech/glide/load/b/o;

    sget-object v3, Lcom/bumptech/glide/load/b/n;->aSM:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    const-string v1, "Accept-Encoding"

    new-instance v2, Lcom/bumptech/glide/load/b/o;

    const-string v3, "identity"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/n;->aSN:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/n;->aSO:Z

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/b/n;->aSN:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/n;->headers:Ljava/util/Map;

    .line 119
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/n;->aSP:Z

    .line 120
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/n;->aSQ:Z

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bumptech/glide/load/b/m;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/n;->aSO:Z

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/b/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/n;->headers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/m;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
