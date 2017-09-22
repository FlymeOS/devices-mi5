.class Lmiui/hybrid/feature/Share$1;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Share;->d(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yK:Lmiui/hybrid/NativeInterface;

.field final synthetic zv:Lmiui/hybrid/Callback;

.field final synthetic zw:Lmiui/hybrid/feature/Share;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Share;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Callback;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/hybrid/feature/Share$1;->zw:Lmiui/hybrid/feature/Share;

    iput-object p2, p0, Lmiui/hybrid/feature/Share$1;->yK:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Share$1;->zv:Lmiui/hybrid/Callback;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/hybrid/feature/Share$1;->yK:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 97
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 98
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 104
    :goto_0
    iget-object v1, p0, Lmiui/hybrid/feature/Share$1;->zv:Lmiui/hybrid/Callback;

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 105
    return-void

    .line 99
    :cond_0
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    const-string v2, "cancel"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0
.end method
