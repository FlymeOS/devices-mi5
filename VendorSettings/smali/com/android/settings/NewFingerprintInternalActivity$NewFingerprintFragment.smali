.class public Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;
.super Lcom/android/vendorsettings/BaseEditFragment;
.source "NewFingerprintInternalActivity.java"


# instance fields
.field private gC:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:I

.field private qe:Lcom/android/vendorsettings/cZ;

.field private rL:Landroid/widget/TextView;

.field private uN:I

.field private uO:Landroid/os/Vibrator;

.field private uP:Landroid/widget/TextView;

.field private uQ:Landroid/widget/ImageView;

.field private uR:Landroid/widget/VideoView;

.field private uS:Landroid/widget/VideoView;

.field private uT:Landroid/widget/Button;

.field private uU:Landroid/view/View;

.field private uV:Landroid/app/AlertDialog;

.field private uW:Z

.field private uX:I

.field private uY:Landroid/net/Uri;

.field private uZ:I

.field private va:Lcom/android/vendorsettings/cY;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseEditFragment;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uN:I

    .line 53
    iput v2, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    .line 54
    iput-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:Landroid/os/Vibrator;

    .line 63
    iput-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/app/AlertDialog;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v2, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Z

    .line 66
    iput v2, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uX:I

    .line 67
    iput-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:Landroid/net/Uri;

    .line 236
    new-instance v0, Lcom/android/vendorsettings/fL;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fL;-><init>(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->va:Lcom/android/vendorsettings/cY;

    return-void
.end method

.method private L(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 221
    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 363
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 366
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:Landroid/net/Uri;

    .line 231
    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 232
    invoke-virtual {p2}, Landroid/widget/VideoView;->start()V

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/net/Uri;Landroid/widget/VideoView;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uX:I

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uN:I

    return v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:I

    return v0
.end method

.method private eQ()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dW()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->rL:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return v0
.end method

.method static synthetic l(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uN:I

    return v0
.end method

.method static synthetic m(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    const v0, 0x7f0400be

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->rL:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f13015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uQ:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f13015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/Button;

    .line 164
    new-instance v0, Lcom/android/vendorsettings/fI;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fI;-><init>(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 171
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/vendorsettings/fJ;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fJ;-><init>(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uQ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/widget/TextView;

    const v1, 0x7f0c1110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->rL:Landroid/widget/TextView;

    const v1, 0x7f0c1111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    const-string v0, "core_scan_gesture"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 192
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "core_scan_output_%02d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/fK;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fK;-><init>(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/BaseEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Z

    .line 127
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    iget-object v2, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->va:Lcom/android/vendorsettings/cY;

    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/cZ;->a(Lcom/android/vendorsettings/cY;[B)V

    .line 129
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:Landroid/os/Vibrator;

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:I

    .line 84
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 90
    const-class v0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$InternalActivity;

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const/high16 v0, 0x10000

    if-ne v1, v0, :cond_1

    .line 93
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPattern$InternalActivity;

    .line 99
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 113
    :goto_1
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v1, "challenge"

    iget-object v2, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v2}, Lcom/android/vendorsettings/cZ;->preEnroll()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 118
    return-void

    .line 95
    :cond_1
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 105
    const-string v0, "com.android.settings.titleColor"

    const-string v3, "com.android.settings.titleColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v0, "com.android.settings.bgColor"

    const-string v3, "com.android.settings.bgColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v0, "com.android.settings.lockBtnWhite"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v0, "com.android.settings.forgetPatternColor"

    const-string v3, "com.android.settings.forgetPatternColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v0, "com.android.settings.footerTextColor"

    const-string v3, "com.android.settings.footerTextColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v0, "com.android.settings.forgetPassword"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->eQ()V

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/BaseEditFragment;->onPause()V

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/vendorsettings/BaseEditFragment;->onStart()V

    .line 142
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->uU:Landroid/view/View;

    .line 143
    invoke-virtual {p0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method
