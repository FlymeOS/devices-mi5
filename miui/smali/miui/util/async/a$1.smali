.class final Lmiui/util/async/a$1;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager",
        "<",
        "Lmiui/util/async/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/util/async/a$b;)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p1}, Lmiui/util/async/a$b;->clear()V

    .line 103
    return-void
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lmiui/util/async/a$1;->dn()Lmiui/util/async/a$b;

    move-result-object v0

    return-object v0
.end method

.method public dn()Lmiui/util/async/a$b;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lmiui/util/async/a$b;

    invoke-direct {v0}, Lmiui/util/async/a$b;-><init>()V

    return-object v0
.end method

.method public synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lmiui/util/async/a$b;

    invoke-virtual {p0, p1}, Lmiui/util/async/a$1;->a(Lmiui/util/async/a$b;)V

    return-void
.end method
