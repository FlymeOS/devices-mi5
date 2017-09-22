.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroid/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected Fi:Lcom/android/b/a/o;

.field private Fk:Landroid/hardware/usb/IUsbManager;

.field private Ic:Landroid/widget/Button;

.field private S:Landroid/appwidget/AppWidgetManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->S:Landroid/appwidget/AppWidgetManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->i:Landroid/content/pm/PackageManager;

    .line 63
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Fk:Landroid/hardware/usb/IUsbManager;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Fk:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private c(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 169
    const v0, 0x7f0c0591

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Ic:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    return-void
.end method

.method static synthetic d(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->S:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/b/a/o;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Fi:Lcom/android/b/a/o;

    .line 85
    return-void
.end method

.method public kj()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->S:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f13002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/iC;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Fk:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/iC;->a(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v5, v3

    .line 126
    :goto_0
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 127
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->c(Landroid/widget/TextView;)V

    .line 165
    :goto_1
    return v3

    :cond_1
    move v5, v4

    .line 124
    goto :goto_0

    .line 129
    :cond_2
    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    move v2, v3

    .line 131
    :goto_2
    if-eqz v6, :cond_8

    .line 132
    const v1, 0x7f0c057b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 141
    if-eqz v5, :cond_4

    .line 142
    const v5, 0x7f0c058f

    invoke-virtual {v7, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    if-eqz v2, :cond_3

    .line 146
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v4, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 148
    :cond_3
    if-nez v1, :cond_9

    new-array v1, v11, [Ljava/lang/CharSequence;

    aput-object v9, v1, v4

    const-string v5, "\n"

    aput-object v5, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 151
    :cond_4
    :goto_4
    if-eqz v6, :cond_6

    .line 152
    const v5, 0x7f0c0590

    invoke-virtual {v7, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 154
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    if-eqz v2, :cond_5

    .line 156
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v6, v2, v4, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    :cond_5
    if-nez v1, :cond_a

    new-array v1, v11, [Ljava/lang/CharSequence;

    aput-object v6, v1, v4

    const-string v2, "\n"

    aput-object v2, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    :cond_6
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Ic:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v2, v4

    .line 129
    goto :goto_2

    .line 134
    :cond_8
    const v1, 0x7f0c057a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 148
    :cond_9
    new-array v5, v13, [Ljava/lang/CharSequence;

    aput-object v1, v5, v4

    const-string v1, "\n"

    aput-object v1, v5, v3

    aput-object v9, v5, v11

    const-string v1, "\n"

    aput-object v1, v5, v12

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    .line 159
    :cond_a
    new-array v2, v13, [Ljava/lang/CharSequence;

    aput-object v1, v2, v4

    const-string v1, "\n"

    aput-object v1, v2, v3

    aput-object v6, v2, v11

    const-string v1, "\n"

    aput-object v1, v2, v12

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->kj()Z

    .line 117
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f13002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Ic:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->Ic:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 81
    return-void
.end method
