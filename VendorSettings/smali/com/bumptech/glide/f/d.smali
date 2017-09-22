.class public Lcom/bumptech/glide/f/d;
.super Ljava/lang/Object;
.source "EmptyDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# static fields
.field private static final aVk:Lcom/bumptech/glide/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/f/d;

    invoke-direct {v0}, Lcom/bumptech/glide/f/d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/f/d;->aVk:Lcom/bumptech/glide/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Eh()Lcom/bumptech/glide/f/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/bumptech/glide/f/d;->aVk:Lcom/bumptech/glide/f/b;

    return-object v0
.end method


# virtual methods
.method public DA()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public Dx()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public Dy()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public Dz()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
