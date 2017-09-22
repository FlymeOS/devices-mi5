.class Lmiui/external/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/external/SdkConstants;


# direct methods
.method public static g()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    const-string v0, "miui.core.SdkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    :try_start_1
    const-string v0, "com.miui.internal.core.SdkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 45
    const-string v1, "miuisdk"

    const-string v2, "using legacy sdk"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    const-string v1, "miuisdk"

    const-string v2, "no sdk found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    throw v0
.end method
