.class public Lcom/miui/internal/variable/v16/Android_View_View_class;
.super Lcom/miui/internal/variable/Android_View_View_class;
.source "SourceFile"


# static fields
.field private static final lb:Lmiui/reflect/Field;

.field private static final lc:Lmiui/reflect/Field;

.field private static final ld:Lmiui/reflect/Field;

.field private static final le:Lmiui/reflect/Field;

.field private static final lf:Lmiui/reflect/Field;

.field private static final lg:Lmiui/reflect/Field;

.field private static final lh:Lmiui/reflect/Field;

.field private static final li:Lmiui/reflect/Method;

.field private static final lj:Lmiui/reflect/Method;

.field private static final lk:Lmiui/reflect/Method;

.field private static final ll:Lmiui/reflect/Field;

.field private static final lm:Lmiui/reflect/Field;

.field private static ln:Ljava/lang/Class;

.field private static lo:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/view/View;

    const-string v1, "mPrivateFlags"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lb:Lmiui/reflect/Field;

    .line 30
    const-class v0, Landroid/view/View;

    const-string v1, "mOldWidthMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lc:Lmiui/reflect/Field;

    .line 33
    const-class v0, Landroid/view/View;

    const-string v1, "mOldHeightMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ld:Lmiui/reflect/Field;

    .line 36
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->le:Lmiui/reflect/Field;

    .line 38
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lf:Lmiui/reflect/Field;

    .line 40
    const-class v0, Landroid/view/View;

    const-string v1, "mLeft"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lg:Lmiui/reflect/Field;

    .line 42
    const-class v0, Landroid/view/View;

    const-string v1, "mRight"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lh:Lmiui/reflect/Field;

    .line 44
    const-class v0, Landroid/view/View;

    const-string v1, "getContextMenuInfo"

    const-string v2, "()Landroid/view/ContextMenu$ContextMenuInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->li:Lmiui/reflect/Method;

    .line 47
    const-class v0, Landroid/view/View;

    const-string v1, "onCreateContextMenu"

    const-string v2, "(Landroid/view/ContextMenu;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lj:Lmiui/reflect/Method;

    .line 50
    const-class v0, Landroid/view/View;

    const-string v1, "createSnapshot"

    const-string v2, "(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lk:Lmiui/reflect/Method;

    .line 53
    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    const-string v2, "Landroid/view/View$ListenerInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ll:Lmiui/reflect/Field;

    .line 56
    const-class v0, Landroid/view/View;

    const-string v1, "mKeyedTags"

    const-string v2, "Landroid/util/SparseArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lm:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lb:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 181
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lb:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 198
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lc:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldWidthMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 207
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ld:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldHeightMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachSpecialMethods()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 83
    const-string v0, "setDisplayListProperties"

    const-string v1, "(Landroid/view/DisplayList;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 84
    return-void
.end method

.method public buildProxy()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "refreshDrawableState"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 64
    const-string v0, "onCreateDrawableState"

    const-string v1, "(I)[I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 65
    const-string v0, "createContextMenu"

    const-string v1, "(Landroid/view/ContextMenu;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 66
    const-string v0, "(Landroid/content/Context;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 67
    const-string v0, "()V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 68
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->attachSpecialMethods()V

    .line 69
    return-void
.end method

.method public createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 265
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lk:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lk:Lmiui/reflect/Method;

    const-class v1, Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleRefreshDrawableState(JLandroid/view/View;)V

    .line 74
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleOnCreateDrawableState(JLandroid/view/View;I)[I

    .line 75
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    .line 76
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handleSetDisplayListProperties(JLandroid/view/View;Landroid/view/DisplayList;)V

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    .line 77
    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/variable/v16/Android_View_View_class;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method protected handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    instance-of v0, p4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_3

    .line 128
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ln:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    const-string v0, "android.view.View$ListenerInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ln:Ljava/lang/Class;

    .line 131
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->ln:Ljava/lang/Class;

    const-string v1, "mOnCreateContextMenuListener"

    const-string v2, "Landroid/view/View$OnCreateContextMenuListener;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lo:Lmiui/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->li:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p3, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v1, p4

    .line 140
    check-cast v1, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 141
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->lj:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, p3, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class;->ll:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_1

    .line 144
    sget-object v2, Lcom/miui/internal/variable/v16/Android_View_View_class;->lo:Lmiui/reflect/Field;

    invoke-virtual {v2, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnCreateContextMenuListener;

    .line 145
    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v1, p4, p3, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1
    move-object v0, p4

    .line 149
    check-cast v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 150
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 156
    :cond_2
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method protected handleOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalOnCreateDrawableState(JLandroid/view/View;I)[I

    move-result-object v0

    .line 98
    invoke-virtual {p0, p3, v0, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->onCreateDrawableState(Landroid/view/View;[II)[I

    move-result-object v0

    return-object v0
.end method

.method protected handleRefreshDrawableState(JLandroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalRefreshDrawableState(JLandroid/view/View;)V

    .line 88
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->onDrawableStateChange(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method protected handleSetDisplayListProperties(JLandroid/view/View;Landroid/view/DisplayList;)V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class;->originalSetDisplayListProperties(JLandroid/view/View;Landroid/view/DisplayList;)V

    .line 165
    if-eqz p4, :cond_0

    .line 166
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->hasOverlappingRendering:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_View_class;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_View_class;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method protected originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalCreateContextMenu(long, View, ContextMenu)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalOnCreateDrawableState(long, View, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalRefreshDrawableState(JLandroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalRefreshDrawableState(long, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalSetDisplayListProperties(JLandroid/view/View;Landroid/view/DisplayList;)V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalSetDisplayListProperties(long, View, DisplayList)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relayout(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->b(Landroid/view/View;)I

    move-result v0

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 219
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->c(Landroid/view/View;)I

    move-result v1

    .line 220
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class;->d(Landroid/view/View;)I

    move-result v2

    .line 221
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class;->a(Landroid/view/View;I)V

    .line 225
    :cond_0
    return-void
.end method

.method public setLeftDirectly(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lg:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRightDirectly(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lh:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setScrollXDirectly(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 230
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->le:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollX"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setScrollYDirectly(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 239
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class;->lf:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
