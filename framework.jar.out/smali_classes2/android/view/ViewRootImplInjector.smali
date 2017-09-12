.class public Landroid/view/ViewRootImplInjector;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 18
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_0

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v2, "stackTrace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.view.ViewRootImplInjector.transformWindowType"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v4, "android.view.ViewRootImpl.setView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v4, "android.view.WindowManagerGlobal.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v4, "android.view.WindowManagerImpl.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v4, "android.widget.Toast$TN.handleShow"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :try_start_0
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 31
    .local v3, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/view/ViewRootImplInjector;->elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 34
    const/16 v4, 0x7d3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    .end local v3    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ViewRootImpl"

    const-string v5, " transformWindowTye error "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
