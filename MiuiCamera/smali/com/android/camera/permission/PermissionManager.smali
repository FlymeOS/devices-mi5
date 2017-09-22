.class public Lcom/android/camera/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static mLauchPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocationPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRuntimePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    sget-object v1, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    sget-object v1, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public static checkCameraLaunchPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1

    .line 88
    .local v0, "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 83
    .end local v0    # "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/android/camera/permission/PermissionManager;->mLauchPermissionList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    .restart local v0    # "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 85
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_2
    const-string v2, "PermissionManager"

    const-string v3, "CheckCameraPermissions(), all on"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkCameraLocationPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1

    .line 104
    .local v0, "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 99
    .end local v0    # "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    .restart local v0    # "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 101
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "PermissionManager"

    const-string v3, "checkCameraLocationPermissions(), all on"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCameraRuntimePermissionRequestCode()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x64

    return v0
.end method

.method private static getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 70
    .end local p0    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object p0

    .line 59
    .restart local p0    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "permission":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeedCheckPermissionList() permission ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeedCheckPermissionList() listSize ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    .line 70
    goto :goto_0
.end method

.method public static isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z
    .locals 5
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v1, "perms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "android.permission.CAMERA"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 189
    aget-object v2, p0, v0

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "android.permission.CAMERA"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 197
    const/4 v2, 0x1

    .line 199
    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z
    .locals 5
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v1, "perms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 160
    aget-object v2, p0, v0

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 166
    const/4 v2, 0x1

    .line 168
    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static requestCameraRuntimePermissions(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    sget-object v2, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    invoke-static {v2}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "needCheckPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 123
    const-string v1, "PermissionManager"

    const-string v2, "requestCameraRuntimePermissions(), user check"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 129
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "PermissionManager"

    const-string v3, "requestCameraRuntimePermissions(), all on"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
