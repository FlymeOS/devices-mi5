.class public Lcom/bumptech/glide/load/resource/d/c;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# static fields
.field private static final aUx:Lcom/bumptech/glide/load/resource/d/e;

.field private static final aUy:Lcom/bumptech/glide/load/resource/d/d;


# instance fields
.field private final aNB:Lcom/bumptech/glide/load/engine/a/e;

.field private final aUA:Lcom/bumptech/glide/load/d;

.field private final aUB:Lcom/bumptech/glide/load/resource/d/e;

.field private final aUC:Lcom/bumptech/glide/load/resource/d/d;

.field private final aUz:Lcom/bumptech/glide/load/d;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/d/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/c;->aUx:Lcom/bumptech/glide/load/resource/d/e;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/c;->aUy:Lcom/bumptech/glide/load/resource/d/d;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/e;)V
    .locals 6

    .prologue
    .line 38
    sget-object v4, Lcom/bumptech/glide/load/resource/d/c;->aUx:Lcom/bumptech/glide/load/resource/d/e;

    sget-object v5, Lcom/bumptech/glide/load/resource/d/c;->aUy:Lcom/bumptech/glide/load/resource/d/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/d/e;Lcom/bumptech/glide/load/resource/d/d;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/d/e;Lcom/bumptech/glide/load/resource/d/d;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->aUz:Lcom/bumptech/glide/load/d;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/c;->aUA:Lcom/bumptech/glide/load/d;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/c;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    .line 48
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/c;->aUB:Lcom/bumptech/glide/load/resource/d/e;

    .line 49
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/d/c;->aUC:Lcom/bumptech/glide/load/resource/d/d;

    .line 50
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/j;II[B)Lcom/bumptech/glide/load/resource/d/a;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/j;->getStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/d/c;->b(Lcom/bumptech/glide/load/b/j;II[B)Lcom/bumptech/glide/load/resource/d/a;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/c;->b(Lcom/bumptech/glide/load/b/j;II)Lcom/bumptech/glide/load/resource/d/a;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/load/b/j;II)Lcom/bumptech/glide/load/resource/d/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->aUz:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V

    .line 126
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/load/b/j;II[B)Lcom/bumptech/glide/load/resource/d/a;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->aUC:Lcom/bumptech/glide/load/resource/d/d;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/j;->getStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/bumptech/glide/load/resource/d/d;->b(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->aUB:Lcom/bumptech/glide/load/resource/d/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/e;->e(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v2

    .line 83
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v0, 0x0

    .line 86
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->aTt:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v2, v3, :cond_0

    .line 87
    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/load/resource/d/c;->c(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/a;

    move-result-object v0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/b/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/j;->Dn()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/j;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/resource/d/c;->b(Lcom/bumptech/glide/load/b/j;II)Lcom/bumptech/glide/load/resource/d/a;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0
.end method

.method private c(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->aUA:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/c/b;

    .line 108
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/b;->getFrameCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 109
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/b;->DL()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/c;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 112
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/j;II)Lcom/bumptech/glide/load/engine/v;
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/bumptech/glide/h/a;->EG()Lcom/bumptech/glide/h/a;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/h/a;->getBytes()[B

    move-result-object v1

    .line 61
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/resource/d/c;->a(Lcom/bumptech/glide/load/b/j;II[B)Lcom/bumptech/glide/load/resource/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h/a;->n([B)Z

    .line 65
    if-eqz v2, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/a;)V

    :goto_0
    return-object v0

    .line 63
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h/a;->n([B)Z

    throw v2

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/bumptech/glide/load/b/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/c;->a(Lcom/bumptech/glide/load/b/j;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/c;->aUA:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/c;->aUz:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->id:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->id:Ljava/lang/String;

    return-object v0
.end method
