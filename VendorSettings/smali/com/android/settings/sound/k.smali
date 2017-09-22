.class Lcom/android/vendorsettings/sound/k;
.super Landroid/widget/BaseAdapter;
.source "AudioSettingsFragment.java"


# instance fields
.field final synthetic aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

.field aqq:Ljava/util/List;

.field private aqr:Landroid/view/View$OnClickListener;

.field private aqs:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    .line 237
    new-instance v0, Lcom/android/vendorsettings/sound/l;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/sound/l;-><init>(Lcom/android/vendorsettings/sound/k;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqr:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/android/vendorsettings/sound/m;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/sound/m;-><init>(Lcom/android/vendorsettings/sound/k;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqs:Landroid/view/View$OnClickListener;

    .line 141
    iput-object p2, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/k;->mInflater:Landroid/view/LayoutInflater;

    .line 143
    return-void
.end method

.method private cJ(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/o;

    .line 218
    sub-int v3, p1, v1

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v0, v0, Lcom/android/vendorsettings/sound/o;->title:Ljava/lang/String;

    .line 223
    :goto_1
    return-object v0

    .line 221
    :cond_0
    iget-object v0, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 222
    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cK(I)Z
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cL(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/k;->cK(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqs:Landroid/view/View$OnClickListener;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqr:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method


# virtual methods
.method protected bF(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->e(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->f(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->g(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->stop()V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->g(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->bI(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->g(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->start()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/o;

    .line 149
    iget-object v0, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/o;

    .line 158
    sub-int v3, p1, v1

    iget-object v4, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 159
    iget-object v0, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    :goto_1
    return-object v0

    .line 161
    :cond_0
    iget-object v0, v0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 162
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v5, 0x1020016

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/k;->cJ(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    const v0, 0x7f130099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 179
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    const v3, 0x7f13003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/k;->cK(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/sound/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/n;

    .line 193
    const v1, 0x7f13003d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 194
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    const v2, 0x7f13027e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    const v3, 0x7f13027f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 197
    iget-object v5, v0, Lcom/android/vendorsettings/sound/n;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, v0, Lcom/android/vendorsettings/sound/n;->aqu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_2
    iget-object v1, v0, Lcom/android/vendorsettings/sound/n;->aqu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/vendorsettings/sound/p;->y(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/vendorsettings/sound/n;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_3
    iget-object v0, v0, Lcom/android/vendorsettings/sound/n;->path:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/k;->cL(I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-object p2

    .line 184
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object v1, v0, Lcom/android/vendorsettings/sound/n;->aqu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public uk()Ljava/util/List;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :pswitch_0
    const-string v0, "/system/media/audio/notifications/"

    .line 313
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/vendorsettings/sound/AudioSettingsFragment;->aqe:Ljava/lang/String;
    invoke-static {}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v3, Lcom/android/vendorsettings/sound/o;

    iget-object v4, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {v3, v4, v9}, Lcom/android/vendorsettings/sound/o;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V

    .line 317
    new-instance v4, Lcom/android/vendorsettings/sound/n;

    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {v4, v5, v9}, Lcom/android/vendorsettings/sound/n;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V

    .line 318
    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0092

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/vendorsettings/sound/n;->name:Ljava/lang/String;

    .line 319
    iget-object v5, v3, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v4, Lcom/android/vendorsettings/sound/o;

    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {v4, v5, v9}, Lcom/android/vendorsettings/sound/o;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V

    .line 322
    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0091

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/vendorsettings/sound/o;->title:Ljava/lang/String;

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 325
    iget-object v8, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Ljava/lang/String;)Lcom/android/vendorsettings/sound/n;

    move-result-object v7

    .line 326
    if-eqz v7, :cond_0

    .line 327
    iget-object v8, v4, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :pswitch_1
    const-string v0, "/system/media/audio/ringtones/"

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v0, "/system/media/audio/notifications/"

    goto :goto_0

    .line 307
    :pswitch_3
    const-string v0, "/system/media/audio/alarms/"

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, v4, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v5}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->h(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->d(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    new-instance v0, Lcom/android/vendorsettings/sound/n;

    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {v0, v5, v9}, Lcom/android/vendorsettings/sound/n;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V

    .line 334
    iget-object v5, p0, Lcom/android/vendorsettings/sound/k;->mContext:Landroid/content/Context;

    const v6, 0x7f0c008d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/vendorsettings/sound/n;->name:Ljava/lang/String;

    .line 335
    const-string v5, ""

    iput-object v5, v0, Lcom/android/vendorsettings/sound/n;->path:Ljava/lang/String;

    .line 336
    iget-object v5, v4, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v5, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    :cond_3
    new-instance v5, Lcom/android/vendorsettings/sound/o;

    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {v5, v0, v9}, Lcom/android/vendorsettings/sound/o;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v6, v2

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_5

    aget-object v1, v2, v0

    .line 342
    iget-object v7, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Ljava/lang/String;)Lcom/android/vendorsettings/sound/n;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_4

    .line 344
    iget-object v7, v5, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_5
    iget-object v0, v5, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->h(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-object v0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/vendorsettings/sound/k;->aqq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/k;->notifyDataSetChanged()V

    .line 295
    return-void
.end method
