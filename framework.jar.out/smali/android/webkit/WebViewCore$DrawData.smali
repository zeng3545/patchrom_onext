.class Landroid/webkit/WebViewCore$DrawData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawData"
.end annotation


# instance fields
.field mBaseLayer:I

.field mCancelShowedRect:Z

.field mContentSize:Landroid/graphics/Point;

.field mFirstLayoutForNonStandardLoad:Z

.field mFocusSizeChanged:Z

.field mMinPrefWidth:I

.field mViewSize:Landroid/graphics/Point;

.field mViewState:Landroid/webkit/WebViewCore$ViewState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2580
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 2581
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    .line 2582
    return-void
.end method
