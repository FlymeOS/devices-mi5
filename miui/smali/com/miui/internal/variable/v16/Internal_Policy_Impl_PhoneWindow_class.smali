.class public Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;,
        Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;
    }
.end annotation


# static fields
.field private static final lF:Ljava/lang/reflect/Field;


# instance fields
.field private final lE:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    const-string v1, "mLayoutInflater"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->lF:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;-><init>()V

    .line 32
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->lE:F

    .line 48
    return-void
.end method

.method private a(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 171
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->lF:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 172
    new-instance v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V

    .line 173
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->lF:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 177
    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;)V
    .locals 2

    .prologue
    .line 183
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->lF:Ljava/lang/reflect/Field;

    invoke-static {p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->a(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic aB()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "installDecor"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 193
    return-void
.end method

.method protected handle()V
    .locals 3

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected handleInstallDecor(JLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 206
    move-object v0, p3

    check-cast v0, Landroid/view/Window;

    .line 207
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    .line 208
    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;

    move-result-object v1

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;)V

    .line 214
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method protected originalInstallDecor(JLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
