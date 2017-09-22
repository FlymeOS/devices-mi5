.class Lmiui/util/async/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/a;->a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue$Predicate",
        "<",
        "Lmiui/util/async/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jg:Lmiui/util/async/a;

.field final synthetic Jh:Lmiui/util/async/Task;


# direct methods
.method constructor <init>(Lmiui/util/async/a;Lmiui/util/async/Task;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lmiui/util/async/a$3;->Jg:Lmiui/util/async/a;

    iput-object p2, p0, Lmiui/util/async/a$3;->Jh:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lmiui/util/async/a$b;

    invoke-virtual {p0, p1}, Lmiui/util/async/a$3;->b(Lmiui/util/async/a$b;)Z

    move-result v0

    return v0
.end method

.method public b(Lmiui/util/async/a$b;)Z
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmiui/util/async/a$b;->Jj:Lmiui/util/async/Task;

    iget-object v1, p0, Lmiui/util/async/a$3;->Jh:Lmiui/util/async/Task;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
