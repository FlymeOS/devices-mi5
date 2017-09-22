.class final Lmiui/text/HindiPinyinConverter$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/HindiPinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton",
        "<",
        "Lmiui/text/HindiPinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected cE()Lmiui/text/HindiPinyinConverter;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Lmiui/text/HindiPinyinConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/text/HindiPinyinConverter;-><init>(Lmiui/text/HindiPinyinConverter$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lmiui/text/HindiPinyinConverter$1;->cE()Lmiui/text/HindiPinyinConverter;

    move-result-object v0

    return-object v0
.end method
