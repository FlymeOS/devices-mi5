.class Lmiui/hybrid/feature/Barcode$1;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Barcode;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yK:Lmiui/hybrid/NativeInterface;

.field final synthetic yL:Lmiui/hybrid/Request;

.field final synthetic yM:Lmiui/hybrid/feature/Barcode;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Barcode;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmiui/hybrid/feature/Barcode$1;->yM:Lmiui/hybrid/feature/Barcode;

    iput-object p2, p0, Lmiui/hybrid/feature/Barcode$1;->yK:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Barcode$1;->yL:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lmiui/hybrid/feature/Barcode;->cc()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lmiui/hybrid/feature/Barcode$1;->yK:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 90
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/hybrid/feature/Barcode$1;->yM:Lmiui/hybrid/feature/Barcode;

    invoke-static {v2, p3}, Lmiui/hybrid/feature/Barcode;->a(Lmiui/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 97
    :goto_0
    iget-object v1, p0, Lmiui/hybrid/feature/Barcode$1;->yL:Lmiui/hybrid/Request;

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 99
    :cond_0
    return-void

    .line 91
    :cond_1
    if-nez p2, :cond_2

    .line 92
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0
.end method
