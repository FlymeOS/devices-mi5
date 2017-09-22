.class public final Lcom/bumptech/glide/a/e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic aOm:Lcom/bumptech/glide/a/a;

.field private final aOq:[J

.field private final aOv:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Lcom/bumptech/glide/a/e;->aOm:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/bumptech/glide/a/e;->key:Ljava/lang/String;

    .line 674
    iput-wide p3, p0, Lcom/bumptech/glide/a/e;->sequenceNumber:J

    .line 675
    iput-object p5, p0, Lcom/bumptech/glide/a/e;->aOv:[Ljava/io/File;

    .line 676
    iput-object p6, p0, Lcom/bumptech/glide/a/e;->aOq:[J

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/a/b;)V
    .locals 1

    .prologue
    .line 666
    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/a/e;-><init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public ej(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/bumptech/glide/a/e;->aOv:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
