.class public Lcom/bumptech/glide/request/a/g;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/d;


# static fields
.field private static final aVP:Lcom/bumptech/glide/request/a/g;

.field private static final aVQ:Lcom/bumptech/glide/request/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/bumptech/glide/request/a/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/a/g;->aVP:Lcom/bumptech/glide/request/a/g;

    .line 11
    new-instance v0, Lcom/bumptech/glide/request/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/h;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/a/g;->aVQ:Lcom/bumptech/glide/request/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static Ex()Lcom/bumptech/glide/request/a/f;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/request/a/g;->aVQ:Lcom/bumptech/glide/request/a/f;

    return-object v0
.end method

.method public static Ey()Lcom/bumptech/glide/request/a/d;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/request/a/g;->aVP:Lcom/bumptech/glide/request/a/g;

    return-object v0
.end method

.method static synthetic Ez()Lcom/bumptech/glide/request/a/g;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/bumptech/glide/request/a/g;->aVP:Lcom/bumptech/glide/request/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
