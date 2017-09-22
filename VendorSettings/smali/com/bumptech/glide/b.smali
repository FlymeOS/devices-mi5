.class public Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/a;
.source "DrawableTypeRequest.java"


# instance fields
.field private final aMQ:Lcom/bumptech/glide/load/b/s;

.field private final aMR:Lcom/bumptech/glide/load/b/s;

.field private final aMS:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;Landroid/content/Context;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/o;)V
    .locals 7

    .prologue
    .line 57
    const-class v3, Lcom/bumptech/glide/load/resource/d/a;

    const-class v4, Lcom/bumptech/glide/load/resource/a/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/a;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V

    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/b;->aMQ:Lcom/bumptech/glide/load/b/s;

    .line 62
    iput-object p3, p0, Lcom/bumptech/glide/b;->aMR:Lcom/bumptech/glide/load/b/s;

    .line 63
    iput-object p8, p0, Lcom/bumptech/glide/b;->aMS:Lcom/bumptech/glide/o;

    .line 64
    return-void
.end method

.method private static a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/e;
    .locals 3

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;

    move-result-object p5

    .line 47
    :cond_1
    const-class v0, Lcom/bumptech/glide/load/b/j;

    invoke-virtual {p0, v0, p3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/bumptech/glide/load/b/h;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/load/b/h;-><init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;)V

    .line 51
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0, v2, p5, v1}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method


# virtual methods
.method public Bw()Lcom/bumptech/glide/g;
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/b;->aMS:Lcom/bumptech/glide/o;

    new-instance v1, Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/bumptech/glide/b;->aMQ:Lcom/bumptech/glide/load/b/s;

    iget-object v3, p0, Lcom/bumptech/glide/b;->aMS:Lcom/bumptech/glide/o;

    invoke-direct {v1, p0, v2, v3}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/o;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/c;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    return-object v0
.end method
