.class public final Lcom/android/vendorsettings/search/b;
.super Lcom/android/internal/content/PackageMonitor;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private final aoT:Ljava/util/List;

.field private final aoU:Ljava/util/List;

.field private final aoV:Ljava/util/List;

.field private final aoW:Landroid/database/ContentObserver;

.field private aoX:Z

.field private aoY:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/android/vendorsettings/search/c;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/search/c;-><init>(Lcom/android/vendorsettings/search/b;)V

    iput-object v0, p0, Lcom/android/vendorsettings/search/b;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/vendorsettings/search/d;

    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/search/d;-><init>(Lcom/android/vendorsettings/search/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/search/b;->aoW:Landroid/database/ContentObserver;

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/search/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/search/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/search/b;->bo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/search/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/search/b;->bp(Ljava/lang/String;)V

    return-void
.end method

.method private static bl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method private static bm(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method private static bn(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method private bo(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-static {p1}, Lcom/android/vendorsettings/search/b;->bl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/search/b;->aoX:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-static {p1}, Lcom/android/vendorsettings/search/b;->bm(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 254
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/search/b;->aoY:Z

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    invoke-static {p1}, Lcom/android/vendorsettings/search/b;->bn(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 264
    :cond_2
    return-void
.end method

.method private bp(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 268
    if-ltz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/search/b;->aoX:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 276
    if-ltz v0, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/search/b;->aoY:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 285
    if-ltz v0, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 291
    :cond_2
    return-void
.end method

.method private i(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 215
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 226
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/search/b;->onInputDeviceChanged(I)V

    .line 220
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/search/b;->i(ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/search/b;->i(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 203
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/search/b;->i(ILjava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/search/b;->i(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 173
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/vendorsettings/search/b;->aoY:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/search/b;->aoW:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/search/b;->aoV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    return-void
.end method
