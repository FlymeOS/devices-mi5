.class public Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# instance fields
.field private final FQ:Landroid/content/pm/ApplicationInfo;

.field private final FR:Ljava/io/File;

.field private final FS:Landroid/util/SparseArray;

.field private final FT:Landroid/util/SparseArray;

.field private FU:Z

.field private final Fv:Lcom/android/vendorsettings/applications/AppOpsState;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FS:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FT:Landroid/util/SparseArray;

    .line 230
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    .line 231
    iput-object p2, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FR:Ljava/io/File;

    .line 233
    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FS:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FT:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    return-void
.end method

.method public aA(I)Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aB(I)Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FT:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method am(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    .line 288
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FU:Z

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
