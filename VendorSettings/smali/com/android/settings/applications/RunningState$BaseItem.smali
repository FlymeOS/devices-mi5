.class Lcom/android/vendorsettings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final OL:Z

.field OM:Landroid/content/pm/PackageItemInfo;

.field ON:Ljava/lang/CharSequence;

.field OO:I

.field OP:J

.field OQ:Ljava/lang/String;

.field OR:Ljava/lang/String;

.field OS:Z

.field OT:Z

.field mDescription:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field mSize:J

.field final mUserId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OL:Z

    .line 364
    iput p2, p0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->mUserId:I

    .line 365
    return-void
.end method
