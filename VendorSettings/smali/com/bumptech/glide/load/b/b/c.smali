.class public Lcom/bumptech/glide/load/b/b/c;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/g;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/b/c;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/c;->id:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a([BII)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/bumptech/glide/load/a/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c;->id:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/a/b;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b/c;->a([BII)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
