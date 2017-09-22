.class public Lcom/android/vendorsettings/d/j;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final aib:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method public static ct(I)I
    .locals 1

    .prologue
    .line 53
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static cu(I)Z
    .locals 1

    .prologue
    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cv(I)I
    .locals 1

    .prologue
    .line 61
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private cw(I)Lcom/android/vendorsettings/d/i;
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 108
    new-instance v3, Lcom/android/vendorsettings/d/i;

    invoke-direct {v3}, Lcom/android/vendorsettings/d/i;-><init>()V

    .line 109
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 135
    invoke-static {p1}, Lcom/android/vendorsettings/d/j;->cu(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-static {p1}, Lcom/android/vendorsettings/d/j;->cv(I)I

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/vendorsettings/iC;->b(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 140
    iget-object v2, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 192
    :goto_0
    return-object v0

    .line 115
    :sswitch_0
    const v0, 0x7f0c0763

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 117
    goto :goto_0

    .line 119
    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0901

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 123
    goto :goto_0

    .line 119
    :cond_0
    const v0, 0x7f0c0900

    goto :goto_1

    .line 125
    :sswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    invoke-static {v0}, Lcom/android/vendorsettings/iC;->b(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 129
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_4

    array-length v1, v5

    .line 149
    :goto_2
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 150
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 151
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 152
    if-ne v1, v9, :cond_5

    .line 153
    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    :cond_2
    iget-object v1, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v7}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_3
    iget-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    :cond_3
    move-object v0, v3

    .line 192
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 147
    goto :goto_2

    .line 160
    :cond_5
    if-le v1, v9, :cond_2

    .line 161
    :try_start_1
    new-array v9, v1, [Ljava/lang/CharSequence;

    iput-object v9, v3, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    .line 162
    new-array v9, v1, [Ljava/lang/CharSequence;

    iput-object v9, v3, Lcom/android/vendorsettings/d/i;->aia:[Ljava/lang/CharSequence;

    .line 163
    :goto_4
    if-ge v2, v1, :cond_2

    .line 164
    aget-object v9, v5, v2

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 166
    const/4 v11, 0x0

    invoke-interface {v8, v9, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 169
    if-eqz v11, :cond_6

    .line 170
    iget-object v12, v3, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    .line 171
    iget-object v12, v3, Lcom/android/vendorsettings/d/i;->aia:[Ljava/lang/CharSequence;

    iget-object v13, v3, Lcom/android/vendorsettings/d/i;->ahZ:[Ljava/lang/CharSequence;

    aget-object v13, v13, v2

    invoke-virtual {v0, v13, v7}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v2

    .line 173
    iget v12, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_6

    .line 174
    iget v12, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v9, v12, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/vendorsettings/d/i;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v11, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v3, Lcom/android/vendorsettings/d/i;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building UI detail for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 184
    :catch_1
    move-exception v0

    .line 185
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building UI detail for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m(IZ)Lcom/android/vendorsettings/d/i;
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/d/i;

    .line 83
    monitor-exit v1

    .line 85
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/d/j;->cw(I)Lcom/android/vendorsettings/d/i;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    monitor-enter v1

    .line 94
    :try_start_1
    iget-object v2, p0, Lcom/android/vendorsettings/d/j;->aib:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
