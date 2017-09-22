.class public Lcom/bumptech/glide/request/a/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# instance fields
.field private final aVL:Lcom/bumptech/glide/request/a/k;

.field private aVM:Lcom/bumptech/glide/request/a/c;

.field private aVN:Lcom/bumptech/glide/request/a/c;

.field private final duration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/a;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/request/a/k;

    new-instance v1, Lcom/bumptech/glide/request/a/b;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/a/b;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a/k;-><init>(Lcom/bumptech/glide/request/a/j;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/a/a;-><init>(Lcom/bumptech/glide/request/a/k;I)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/a/k;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/request/a/a;->aVL:Lcom/bumptech/glide/request/a/k;

    .line 47
    iput p2, p0, Lcom/bumptech/glide/request/a/a;->duration:I

    .line 48
    return-void
.end method

.method private Eu()Lcom/bumptech/glide/request/a/d;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVM:Lcom/bumptech/glide/request/a/c;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVL:Lcom/bumptech/glide/request/a/k;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/a/k;->e(ZZ)Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/bumptech/glide/request/a/c;

    iget v2, p0, Lcom/bumptech/glide/request/a/a;->duration:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/a/c;-><init>(Lcom/bumptech/glide/request/a/d;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/a/a;->aVM:Lcom/bumptech/glide/request/a/c;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVM:Lcom/bumptech/glide/request/a/c;

    return-object v0
.end method

.method private Ev()Lcom/bumptech/glide/request/a/d;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVN:Lcom/bumptech/glide/request/a/c;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVL:Lcom/bumptech/glide/request/a/k;

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/a/k;->e(ZZ)Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/bumptech/glide/request/a/c;

    iget v2, p0, Lcom/bumptech/glide/request/a/a;->duration:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/a/c;-><init>(Lcom/bumptech/glide/request/a/d;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/a/a;->aVN:Lcom/bumptech/glide/request/a/c;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->aVN:Lcom/bumptech/glide/request/a/c;

    return-object v0
.end method


# virtual methods
.method public e(ZZ)Lcom/bumptech/glide/request/a/d;
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/a/g;->Ey()Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/a;->Eu()Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/a;->Ev()Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    goto :goto_0
.end method
