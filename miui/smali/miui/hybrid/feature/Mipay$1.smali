.class Lmiui/hybrid/feature/Mipay$1;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Mipay;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yK:Lmiui/hybrid/NativeInterface;

.field final synthetic yL:Lmiui/hybrid/Request;

.field final synthetic zk:Lmiui/hybrid/feature/Mipay;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Mipay;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmiui/hybrid/feature/Mipay$1;->zk:Lmiui/hybrid/feature/Mipay;

    iput-object p2, p0, Lmiui/hybrid/feature/Mipay$1;->yK:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Mipay$1;->yL:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 83
    const v0, 0x1335188

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lmiui/hybrid/feature/Mipay$1;->yK:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 88
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 89
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/hybrid/feature/Mipay$1;->zk:Lmiui/hybrid/feature/Mipay;

    invoke-static {v2, p3}, Lmiui/hybrid/feature/Mipay;->a(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 96
    :goto_0
    iget-object v1, p0, Lmiui/hybrid/feature/Mipay$1;->yL:Lmiui/hybrid/Request;

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 98
    :cond_0
    return-void

    .line 90
    :cond_1
    if-nez p2, :cond_2

    .line 91
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    iget-object v2, p0, Lmiui/hybrid/feature/Mipay$1;->zk:Lmiui/hybrid/feature/Mipay;

    invoke-static {v2, p3}, Lmiui/hybrid/feature/Mipay;->a(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0
.end method
