.class Lmiui/view/VolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private icon:Landroid/widget/ImageButton;

.field private iconsMapKey:I

.field private important:Z

.field private initIconsMapKey:I

.field private lastLevel:I

.field private slider:Lmiui/widget/SeekBar;

.field private space:Landroid/view/View;

.field private ss:Lmiui/view/VolumeDialog$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    const/4 v0, 0x1

    iput v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/view/VolumeDialog$1;

    .prologue
    .line 911
    invoke-direct {p0}, Lmiui/view/VolumeDialog$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1102(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1200(Lmiui/view/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$1202(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object v0
.end method

.method static synthetic access$1502(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object p1
.end method

.method static synthetic access$1702(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return p1
.end method

.method static synthetic access$200(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$2102(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 911
    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$2200(Lmiui/view/VolumeDialog$VolumeRow;)J
    .locals 2
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-wide v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$2202(Lmiui/view/VolumeDialog$VolumeRow;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # J

    .prologue
    .line 911
    iput-wide p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2400(Lmiui/view/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic access$2402(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/view/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$502(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$600(Lmiui/view/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return v0
.end method

.method static synthetic access$602(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return p1
.end method

.method static synthetic access$700(Lmiui/view/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return v0
.end method

.method static synthetic access$702(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 911
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return p1
.end method

.method static synthetic access$800(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$802(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 911
    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$902(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Lmiui/widget/SeekBar;

    .prologue
    .line 911
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object p1
.end method
