.class public Lmiui/hybrid/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private view:Landroid/view/View;

.field private yt:Ljava/lang/String;

.field private yu:Ljava/lang/String;

.field private yv:Lmiui/hybrid/Callback;

.field private yw:Lmiui/hybrid/PageContext;

.field private yx:Lmiui/hybrid/NativeInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/hybrid/Request;->yt:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Lmiui/hybrid/Callback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/hybrid/Request;->yv:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method public getNativeInterface()Lmiui/hybrid/NativeInterface;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/hybrid/Request;->yx:Lmiui/hybrid/NativeInterface;

    return-object v0
.end method

.method public getPageContext()Lmiui/hybrid/PageContext;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/hybrid/Request;->yw:Lmiui/hybrid/PageContext;

    return-object v0
.end method

.method public getRawParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/hybrid/Request;->yu:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmiui/hybrid/Request;->view:Landroid/view/View;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lmiui/hybrid/Request;->yt:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCallback(Lmiui/hybrid/Callback;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lmiui/hybrid/Request;->yv:Lmiui/hybrid/Callback;

    .line 75
    return-void
.end method

.method public setNativeInterface(Lmiui/hybrid/NativeInterface;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmiui/hybrid/Request;->yx:Lmiui/hybrid/NativeInterface;

    .line 111
    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/hybrid/Request;->yw:Lmiui/hybrid/PageContext;

    .line 93
    return-void
.end method

.method public setRawParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmiui/hybrid/Request;->yu:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmiui/hybrid/Request;->view:Landroid/view/View;

    .line 129
    return-void
.end method
