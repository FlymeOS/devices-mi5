.class public Lcom/bumptech/glide/e;
.super Lcom/bumptech/glide/c;
.source "GenericTranscodeRequest.java"


# instance fields
.field private final aMS:Lcom/bumptech/glide/o;

.field private final aNw:Lcom/bumptech/glide/load/b/s;

.field private final aNx:Ljava/lang/Class;

.field private final aNy:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Class;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/o;)V
    .locals 9

    .prologue
    .line 60
    invoke-static {}, Lcom/bumptech/glide/load/resource/e/e;->DX()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/e;->aNw:Lcom/bumptech/glide/load/b/s;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/e;->aNx:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/e;->aNy:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/e;->aMS:Lcom/bumptech/glide/o;

    .line 66
    return-void
.end method

.method private static a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/f;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/bumptech/glide/f/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/f/b;)V

    return-object v1
.end method
