.class final Lmiui/maml/util/AppIconsHelper$1;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"

# interfaces
.implements Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/AppIconsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRoot(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 35
    :cond_0
    return-void
.end method
