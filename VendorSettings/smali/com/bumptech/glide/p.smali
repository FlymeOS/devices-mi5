.class Lcom/bumptech/glide/p;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/d;


# instance fields
.field private final aMW:Lcom/bumptech/glide/d/q;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/d/q;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/p;->aMW:Lcom/bumptech/glide/d/q;

    .line 794
    return-void
.end method


# virtual methods
.method public bY(Z)V
    .locals 1

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/bumptech/glide/p;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/q;->Ed()V

    .line 801
    :cond_0
    return-void
.end method
