.class public Lcom/bumptech/glide/load/resource/a;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/a;


# static fields
.field private static final aSY:Lcom/bumptech/glide/load/resource/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/a;->aSY:Lcom/bumptech/glide/load/resource/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ds()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/bumptech/glide/load/resource/a;->aSY:Lcom/bumptech/glide/load/resource/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method
