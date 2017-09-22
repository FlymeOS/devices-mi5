.class public Lcom/bumptech/glide/load/resource/e/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/c;


# static fields
.field private static final aUM:Lcom/bumptech/glide/load/resource/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/resource/e/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/e;->aUM:Lcom/bumptech/glide/load/resource/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DX()Lcom/bumptech/glide/load/resource/e/c;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/bumptech/glide/load/resource/e/e;->aUM:Lcom/bumptech/glide/load/resource/e/e;

    return-object v0
.end method


# virtual methods
.method public d(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 0

    .prologue
    .line 20
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    return-object v0
.end method
