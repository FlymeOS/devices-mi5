.class public abstract Lcom/miui/whetstone/component/ComponentHelper;
.super Ljava/lang/Object;
.source "ComponentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentUtils"

.field private static mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetCurAdjByPid:Ljava/lang/reflect/Method;

.field private static mHasForegroundActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getCallerAdj(I)I
    .locals 6
    .param p0, "callingPid"    # I

    .prologue
    .line 56
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mGetCurAdjByPid:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 59
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v2, "getCurAdjByPid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mGetCurAdjByPid:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mGetCurAdjByPid:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 68
    :try_start_1
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mGetCurAdjByPid:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 74
    :goto_1
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "WhetstonePackageState"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WhetstonePackageState"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public static init(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object p0, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method public static isCallerHasForegroundActivities(I)Z
    .locals 7
    .param p0, "callingPid"    # I

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 35
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mHasForegroundActivities:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 37
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v3, "hasForegroundActivities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mHasForegroundActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mHasForegroundActivities:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 46
    :try_start_1
    sget-object v1, Lcom/miui/whetstone/component/ComponentHelper;->mHasForegroundActivities:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 52
    :goto_1
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "WhetstonePackageState"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WhetstonePackageState"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method

.method public static isCallerSystemUid(I)Z
    .locals 1
    .param p0, "callingUid"    # I

    .prologue
    .line 78
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 83
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 91
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 85
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    move v4, v3

    goto :goto_0

    .line 88
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WhetstonePackageState"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
