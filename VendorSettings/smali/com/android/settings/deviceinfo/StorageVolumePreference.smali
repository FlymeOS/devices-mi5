.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroid/preference/Preference;
.source "StorageVolumePreference.java"


# instance fields
.field private final Vq:Landroid/os/storage/VolumeInfo;

.field private final Vr:Landroid/os/storage/StorageManager;

.field private Xk:I

.field private final Xl:Landroid/view/View$OnClickListener;

.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V
    .locals 15

    .prologue
    .line 49
    invoke-direct/range {p0 .. p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xk:I

    .line 122
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xl:Landroid/view/View$OnClickListener;

    .line 51
    const-class v2, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vr:Landroid/os/storage/StorageManager;

    .line 52
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vq:Landroid/os/storage/VolumeInfo;

    .line 53
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 55
    const v2, 0x7f040160

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vr:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    const-string v2, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const v2, 0x7f02018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 67
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 72
    sub-long v8, v6, v4

    .line 74
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 75
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 76
    const v12, 0x7f0c0463

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v10, 0x1

    aput-object v11, v13, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v6, v8, v6

    long-to-int v6, v6

    iput v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xk:I

    .line 79
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 80
    sget v2, Lcom/android/settings/deviceinfo/StorageSettings;->Xa:I

    iput v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 81
    const v2, 0x7f0201bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 90
    iget v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void

    .line 64
    :cond_1
    const v2, 0x7f020197

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xk:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vq:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f1301cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 111
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xk:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->Xk:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 119
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 120
    return-void

    .line 116
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
