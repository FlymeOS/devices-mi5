.class public Lcom/bumptech/glide/load/resource/d;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# static fields
.field private static final aTa:Lcom/bumptech/glide/load/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/bumptech/glide/load/resource/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d;->aTa:Lcom/bumptech/glide/load/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Du()Lcom/bumptech/glide/load/resource/d;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/bumptech/glide/load/resource/d;->aTa:Lcom/bumptech/glide/load/f;

    check-cast v0, Lcom/bumptech/glide/load/resource/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;
    .locals 0

    .prologue
    .line 26
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method
