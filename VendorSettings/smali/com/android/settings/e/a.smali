.class public Lcom/android/vendorsettings/e/a;
.super Ljava/lang/Object;
.source "VirtualSimUtilsReflect.java"


# direct methods
.method public static isDcOnlyVirtualSim(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/android/vendorsettings/e/a;->tZ()Ljava/lang/Class;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    :try_start_0
    const-string v2, "isDcOnlyVirtualSim"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    move v0, v1

    .line 36
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "VirtualSimUtilsReflect"

    const-string v3, "Method Reflect Error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public static isVirtualSim(Landroid/content/Context;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {}, Lcom/android/vendorsettings/e/a;->tZ()Ljava/lang/Class;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 43
    :try_start_0
    const-string v2, "isVirtualSim"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v2, "VirtualSimUtilsReflect"

    const-string v3, "Method Reflect Error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method private static tZ()Ljava/lang/Class;
    .locals 4

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 18
    :try_start_0
    const-string v1, "miui.telephony.VirtualSimUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const-string v2, "VirtualSimUtilsReflect"

    const-string v3, "Are we running on a pad?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
