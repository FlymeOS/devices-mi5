.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic aNY:Lcom/bumptech/glide/j;

.field private final aNw:Lcom/bumptech/glide/load/b/s;

.field private final aNx:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/bumptech/glide/m;->aNw:Lcom/bumptech/glide/load/b/s;

    .line 715
    iput-object p3, p0, Lcom/bumptech/glide/m;->aNx:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/m;->aNw:Lcom/bumptech/glide/load/b/s;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/m;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/m;->aNx:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public x(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/bumptech/glide/n;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/m;Ljava/lang/Object;)V

    return-object v0
.end method
