.class public Lcom/android/settings/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# instance fields
.field private final atM:I

.field private final atN:Landroid/net/Uri;

.field private final atO:Landroid/net/Uri;

.field private atP:Landroid/graphics/Bitmap;

.field private atQ:Landroid/graphics/drawable/Drawable;

.field private final bR:Landroid/app/Fragment;

.field private final mContext:Landroid/content/Context;

.field private final uQ:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 87
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->bR:Landroid/app/Fragment;

    .line 88
    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    .line 89
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v4, "CropEditUserPhoto.jpg"

    if-nez p5, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/users/EditUserPhotoController;->f(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atN:Landroid/net/Uri;

    .line 90
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v3, "TakeEditUserPhoto2.jpg"

    if-nez p5, :cond_1

    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/users/EditUserPhotoController;->f(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atO:Landroid/net/Uri;

    .line 91
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->cj(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atM:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/users/EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/EditUserPhotoController$1;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController;->atP:Landroid/graphics/Bitmap;

    .line 99
    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController;->atQ:Landroid/graphics/drawable/Drawable;

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method

.method private E(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v0, "outputX"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->atM:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v0, "outputY"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->atM:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->atP:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->atQ:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 225
    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v0, "output"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 229
    return-void
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 242
    new-instance v1, Lcom/android/settings/users/EditUserPhotoController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/users/EditUserPhotoController$3;-><init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/users/EditUserPhotoController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vh()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vl()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vk()V

    return-void
.end method

.method private static cj(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 313
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 314
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic d(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/users/EditUserPhotoController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atM:I

    return v0
.end method

.method private e(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->atN:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/android/settings/users/EditUserPhotoController;->E(Landroid/content/Intent;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->bR:Landroid/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/EditUserPhotoController;->a(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 323
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    if-eqz p3, :cond_0

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 327
    :cond_0
    const-string v0, "com.android.settings.files"

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atQ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private vh()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 129
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vi()Z

    move-result v0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vj()Z

    move-result v1

    .line 132
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->vi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v3, v6}, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 142
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    if-eqz v1, :cond_2

    .line 146
    const v1, 0x7f0c09ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v3, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v3, v1, v5}, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v1, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 155
    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 157
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040072

    invoke-direct {v3, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0067

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 165
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/users/EditUserPhotoController$2;-><init>(Lcom/android/settings/users/EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private vi()Z
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private vj()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->uQ:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private vk()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->atO:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->bR:Landroid/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method

.method private vl()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->atO:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->bR:Landroid/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 117
    :goto_0
    return v0

    .line 106
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 108
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/settings/users/EditUserPhotoController;->e(Landroid/net/Uri;)V

    move v0, v1

    .line 115
    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->atO:Landroid/net/Uri;

    goto :goto_1

    .line 110
    :pswitch_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/users/EditUserPhotoController;->a(Landroid/net/Uri;Z)V

    move v0, v1

    .line 111
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public vf()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public vg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->atQ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
